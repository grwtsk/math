# geometricCompensationFactor_closedForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "523922de7558f3efe98092259698a06b7ff1c891",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:712d39a2-5bc7-6008-7870-33556a75e157",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e83390a6-a297-57f4-d497-70102a6f183d",
  "kind": "theorem",
  "lexical_name": "geometricCompensationFactor_closedForm",
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
  "slug": "geometriccompensationfactor-closedform--38d1a6d884b5eecdaa69c734",
  "source": {
    "blob": "523922de7558f3efe98092259698a06b7ff1c891",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38d1a6d884b5eecdaa69c734bd9e29e5a2c3c22aac1d52eb11c85f5629f4ee52",
  "verification": {
    "reference": "docs/verification/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e83390a6-a297-57f4-d497-70102a6f183d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometricCompensationFactor_closedForm
    (contraction : ℝ)
    (length : Nat)
    (nonunit :
      contraction ^ 2 ≠ 1) :
    geometricCompensationFactor
        contraction length =
      ((contraction ^ 2) ^ length - 1) /
        (contraction ^ 2 - 1) := by
  rw [geometricCompensationFactor_eq_sum,
    geom_sum_eq nonunit]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GeometricPathBound/Variant2320e7b1677fdf8d9a774fb75c44df208f91c35f4c2388038ba0414dc6950b0b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523922de7558f3efe98092259698a06b7ff1c891` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
