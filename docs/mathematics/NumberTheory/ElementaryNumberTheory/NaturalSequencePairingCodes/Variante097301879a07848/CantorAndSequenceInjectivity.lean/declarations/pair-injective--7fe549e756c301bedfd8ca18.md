# pair_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e0a783f-489c-3057-93f1-ca7829789d64",
  "kind": "theorem",
  "lexical_name": "pair_injective",
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
  "slug": "pair-injective--7fe549e756c301bedfd8ca18",
  "source": {
    "blob": "072f48cedd17cff743b19705732244d481b21f46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 75,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fe549e756c301bedfd8ca1851ad98d0b3dd2af3c6e3d0cef03325c230fa2663",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e0a783f-489c-3057-93f1-ca7829789d64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pair_injective : Function.Injective (fun pair : Nat × Nat =>
    cantorPair pair.1 pair.2) := by
  intro left right equality
  change cantorPair left.1 left.2 = cantorPair right.1 right.2 at equality
  have diagonalEquality : left.1 + left.2 = right.1 + right.2 := by
    by_contra different
    rcases lt_or_gt_of_ne different with less | greater
    · have step : left.1 + left.2 + 1 ≤ right.1 + right.2 := by omega
      have triangleOrder :
          triangular (left.1 + left.2 + 1) ≤
            triangular (right.1 + right.2) :=
        triangular_strictMono.monotone step
      have leftUpper := pair_upper left.1 left.2
      have rightLower := pair_lower right.1 right.2
      omega
    · have step : right.1 + right.2 + 1 ≤ left.1 + left.2 := by omega
      have triangleOrder :
          triangular (right.1 + right.2 + 1) ≤
            triangular (left.1 + left.2) :=
        triangular_strictMono.monotone step
      have leftLower := pair_lower left.1 left.2
      have rightUpper := pair_upper right.1 right.2
      omega
  have secondEquality : left.2 = right.2 := by
    rw [pair_eq_triangular, pair_eq_triangular, diagonalEquality] at equality
    omega
  exact Prod.ext (by omega) secondEquality

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/NaturalSequencePairingCodes/Variante097301879a07848/CantorAndSequenceInjectivity.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072f48cedd17cff743b19705732244d481b21f46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
