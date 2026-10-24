# compNonUnitalAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ad94d094d97f63d63c1b00522084e36d5cacc7a906370b40c876725532a1f95",
  "kind": "def",
  "lexical_name": "compNonUnitalAlgHom",
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
  "slug": "compnonunitalalghom--a1c7859d4ba73b479e9242d2",
  "source": {
    "blob": "93865c911278412182d771e2773ef858e7b04f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 636,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1c7859d4ba73b479e9242d29c7f7b1e713952e7a2bc757ff9bfe1acc4a7dbe9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ad94d094d97f63d63c1b00522084e36d5cacc7a906370b40c876725532a1f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compNonUnitalAlgHom {R : Type*} [Semiring R] [NonUnitalNonAssocSemiring δ]
    [IsTopologicalSemiring δ] [Module R δ] [ContinuousConstSMul R δ] (g : β →co γ) :
    C₀(γ, δ) →ₙₐ[R] C₀(β, δ) where
  toFun f := f.comp g
  map_smul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl
  map_mul' _ _ := rfl

end ZeroAtInftyContinuousMap
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantba73c9ba129de3338008c5df0d185cf64b2f756c72d3ef6a194973cece9ae8af.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93865c911278412182d771e2773ef858e7b04f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
