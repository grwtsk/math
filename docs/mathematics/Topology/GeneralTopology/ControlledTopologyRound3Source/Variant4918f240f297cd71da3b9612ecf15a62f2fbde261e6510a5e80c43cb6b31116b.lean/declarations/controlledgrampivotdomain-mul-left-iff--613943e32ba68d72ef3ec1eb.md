# controlledGramPivotDomain_mul_left_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47af7a21-676b-900a-5b30-34adbb8fe345",
  "kind": "theorem",
  "lexical_name": "controlledGramPivotDomain_mul_left_iff",
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
  "slug": "controlledgrampivotdomain-mul-left-iff--613943e32ba68d72ef3ec1eb",
  "source": {
    "blob": "01298727189f364dc3445fecc3c88d291b915adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:613943e32ba68d72ef3ec1eba35e887ed146680d0efe20d1a68fef175ac0e5f6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47af7a21-676b-900a-5b30-34adbb8fe345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlledGramPivotDomain_mul_left_iff (U : Matrix (Fin k) (Fin k) ℝ)
    (hU : U.det ≠ 0) (A : Matrix (Fin k) (Fin n) ℝ) (I : Fin k ↪o Fin n) :
    U * A ∈ controlledGramPivotDomain I ↔ A ∈ controlledGramPivotDomain I := by
  change controlledPivotThreshold k n ^ 2 * ((U * A) * (U * A).transpose).det <
      columnMinor (U * A) I ^ 2 ↔
    controlledPivotThreshold k n ^ 2 * (A * A.transpose).det < columnMinor A I ^ 2
  rw [det_gram_mul_left, columnMinor_mul_left, mul_pow]
  have he : controlledPivotThreshold k n ^ 2 * (U.det ^ 2 * (A * A.transpose).det) =
      U.det ^ 2 * (controlledPivotThreshold k n ^ 2 * (A * A.transpose).det) := by ring
  rw [he]
  exact mul_lt_mul_iff_right₀ (sq_pos_of_ne_zero hU)

/-- The homogeneous strict polynomial inequality gives an actual open matrix domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01298727189f364dc3445fecc3c88d291b915adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
