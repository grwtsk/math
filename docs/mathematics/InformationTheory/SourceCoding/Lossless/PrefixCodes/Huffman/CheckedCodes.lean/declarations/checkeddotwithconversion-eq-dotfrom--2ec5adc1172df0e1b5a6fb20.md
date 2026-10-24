# checkedDotWithConversion_eq_dotFrom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b9fdd81-56fd-f042-19fd-4fa24d7b1c57",
  "kind": "theorem",
  "lexical_name": "checkedDotWithConversion_eq_dotFrom",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "checkeddotwithconversion-eq-dotfrom--2ec5adc1172df0e1b5a6fb20",
  "source": {
    "blob": "73b8589a671c50c13c0aee8723f57ce3cb93ef66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 37,
    "path": "GRWTSK/InformationTheory/Huffman/CheckedCodes.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ec5adc1172df0e1b5a6fb205e4a55c7f2644f9ddfbd49009a10dcdc5ac7854a",
  "verification": {
    "reference": "docs/verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b9fdd81-56fd-f042-19fd-4fa24d7b1c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkedDotWithConversion_eq_dotFrom (pairs : List (Nat × Nat)) (total : Nat)
    (lengths : ∀ pair ∈ pairs, pair.2 < 2 ^ 64) :
    checkedDotWithConversion total pairs = dotFrom total pairs := by
  induction pairs generalizing total with
  | nil => rfl
  | cons pair tail ih =>
    have converted : checkedUsize 64 pair.2 = some pair.2 :=
      (checkedUsize_eq_some_iff _ _ _).mpr ⟨lengths pair (by simp), rfl⟩
    have tailLengths : ∀ row ∈ tail, row.2 < 2 ^ 64 :=
      fun row hr => lengths row (by simp [hr])
    simp only [checkedDotWithConversion, converted, dotFrom]
    cases product : checkedMul pair.1 pair.2 with
    | none => rfl
    | some bits =>
      change (match checkedAdd total bits with
        | none => none
        | some next => checkedDotWithConversion next tail) =
        (match checkedAdd total bits with
        | none => none
        | some next => dotFrom next tail)
      cases addition : checkedAdd total bits with
      | none => rfl
      | some next =>
        exact ih next tailLengths

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedCodes.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/InformationTheory/Huffman/CheckedCodes.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73b8589a671c50c13c0aee8723f57ce3cb93ef66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
