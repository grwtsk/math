# WeightOneCMRealization.tensorBilinearToActual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e77b65ff76f6898d0a7c35cfd9e0250afc3d70a22c8a4fe3830ae4c0522b026d",
  "kind": "def",
  "lexical_name": "WeightOneCMRealization.tensorBilinearToActual",
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
  "slug": "weightonecmrealization-tensorbilineartoactual--14516505b79f2c099d212975",
  "source": {
    "blob": "e632f5554fdc09dafe2880ed91b404169b0b3d99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 299,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14516505b79f2c099d2129751a29a239d6aa9896037bbe1cc6a2bf618016f3fc",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e77b65ff76f6898d0a7c35cfd9e0250afc3d70a22c8a4fe3830ae4c0522b026d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WeightOneCMRealization.tensorBilinearToActual
    {v : OddSignRow E}
    {X : SignControlledXi E v}
    (R : WeightOneCMRealization E v X) :
    E →ₗ[ℚ] E →ₗ[ℚ] R.H1C :=
  LinearMap.mk₂ ℚ
    (fun a x =>
      (CMArchimedeanPositivity.baseComplexEmbedding E a) •
        R.h1ToComplex (R.h1Equiv.symm x))
    (by
      intro a b x
      simp [add_smul])
    (by
      intro q a x
      simp [Algebra.smul_def, mul_smul])
    (by
      intro a x y
      simp [smul_add])
    (by
      intro q a x
      simp [Algebra.smul_def, smul_smul, mul_assoc, mul_comm, mul_left_comm])

/-- Canonical Q-linear map from E tensor_Q E into actual complexified H1,
constructed by the universal property of the tensor product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMWeightOneRiemannRealization.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e632f5554fdc09dafe2880ed91b404169b0b3d99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
