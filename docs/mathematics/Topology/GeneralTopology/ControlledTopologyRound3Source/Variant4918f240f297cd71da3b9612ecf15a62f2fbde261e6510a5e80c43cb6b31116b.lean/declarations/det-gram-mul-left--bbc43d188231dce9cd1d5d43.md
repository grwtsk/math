# det_gram_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8454ba8-fd23-3347-02ff-113234963292",
  "kind": "theorem",
  "lexical_name": "det_gram_mul_left",
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
  "slug": "det-gram-mul-left--bbc43d188231dce9cd1d5d43",
  "source": {
    "blob": "01298727189f364dc3445fecc3c88d291b915adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc43d188231dce9cd1d5d436d568965ea390aad6ac5d75b2839ded01a8bb185",
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

Occurrence: `result:e8454ba8-fd23-3347-02ff-113234963292`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_gram_mul_left (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) :
    ((U * A) * (U * A).transpose).det = U.det ^ 2 * (A * A.transpose).det := by
  have he : (U * A) * (U * A).transpose = U * (A * A.transpose) * U.transpose := by
    rw [Matrix.transpose_mul]
    simp only [Matrix.mul_assoc]
  rw [he, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
  ring

/-- Homogeneous margin test on arbitrary actual matrix representatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledTopologyRound3Source/Variant4918f240f297cd71da3b9612ecf15a62f2fbde261e6510a5e80c43cb6b31116b.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01298727189f364dc3445fecc3c88d291b915adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
