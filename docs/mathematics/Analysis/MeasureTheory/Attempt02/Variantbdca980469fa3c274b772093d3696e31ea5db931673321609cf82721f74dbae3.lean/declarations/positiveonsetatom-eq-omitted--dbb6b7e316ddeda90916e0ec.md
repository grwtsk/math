# positiveOnsetAtom_eq_omitted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:272f2dc0-3fca-13ef-6a6d-e6fb521ba223",
  "kind": "theorem",
  "lexical_name": "positiveOnsetAtom_eq_omitted",
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
  "slug": "positiveonsetatom-eq-omitted--dbb6b7e316ddeda90916e0ec",
  "source": {
    "blob": "c52fb99feec1d5374fdd2105cf80a0bd06d13f12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 61,
    "path": "GRWTSK/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbb6b7e316ddeda90916e0ec6136b3a965ade45e855c17b01504abcfa9c62369",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:272f2dc0-3fca-13ef-6a6d-e6fb521ba223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveOnsetAtom_eq_omitted (p : Nat.Primes) (k : ℕ) (t : ℝ) :
    positiveOnsetAtom p k t = if 0<t then omittedOnsetAtom t p k else 0 := by
  unfold positiveOnsetAtom powerOnset powerWeight omittedOnsetAtom
  simp only [indicator_apply,mem_Ioo]
  by_cases h0 : 0<t
  · simp only [h0,true_and,if_true]
  · simp only [h0,false_and,if_false]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c52fb99feec1d5374fdd2105cf80a0bd06d13f12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
