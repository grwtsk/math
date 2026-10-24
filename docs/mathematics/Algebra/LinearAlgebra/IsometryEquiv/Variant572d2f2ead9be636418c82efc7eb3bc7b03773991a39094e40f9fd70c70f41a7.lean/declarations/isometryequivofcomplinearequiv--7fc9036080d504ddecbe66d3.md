# isometryEquivOfCompLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0299966a595ae91a6c01f2d40c7a41db1bbadb2dd327dd59abb29bea980439f1",
  "kind": "def",
  "lexical_name": "isometryEquivOfCompLinearEquiv",
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
  "slug": "isometryequivofcomplinearequiv--7fc9036080d504ddecbe66d3",
  "source": {
    "blob": "b851ffdfb22f968d4a6f73aaf9cecc444da7ce31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fc9036080d504ddecbe66d3d58e3f9b0a0e563de99463c11e5b617c4321926c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0299966a595ae91a6c01f2d40c7a41db1bbadb2dd327dd59abb29bea980439f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isometryEquivOfCompLinearEquiv (B : LinearMap.BilinForm R M) (f : M₁ ≃ₗ[R] M) :
    B.IsometryEquiv (B.comp (f : M₁ →ₗ[R] M) (f : M₁ →ₗ[R] M)) :=
  { f.symm with
    map_app' := by
      intro _ _
      simp only [comp_apply, LinearEquiv.coe_coe, LinearEquiv.toFun_eq_coe,
        f.apply_symm_apply] }

end LinearMap.BilinForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b851ffdfb22f968d4a6f73aaf9cecc444da7ce31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
