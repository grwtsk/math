# AlgHom.extendScalarsOfIsLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a52b1c79347468c3e861b6893545610d71c0953ff68f8883e4117b01833582d",
  "kind": "def",
  "lexical_name": "AlgHom.extendScalarsOfIsLocalization",
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
  "slug": "alghom-extendscalarsofislocalization--793616b6f4baa9cbf58861a2",
  "source": {
    "blob": "8767d1701d07bd76ecfeb5459c51d21566a06b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 699,
    "path": "GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:793616b6f4baa9cbf58861a2b58db7d922ee7deba9f8426f48a4e81e92811d22",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a52b1c79347468c3e861b6893545610d71c0953ff68f8883e4117b01833582d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AlgHom.extendScalarsOfIsLocalization (f : A →ₐ[R] B) : A →ₐ[S] B where
  __ := f
  commutes' := by
    let f := f.comp (IsScalarTower.toAlgHom R S A)
    let g := IsScalarTower.toAlgHom R S B
    have : f.toRingHom.comp (algebraMap R S) = g.toRingHom.comp (algebraMap R S) := by simp
    suffices f = g by rwa [DFunLike.ext_iff] at this
    apply IsLocalization.algHom_ext M
    rwa [DFunLike.ext_iff] at this ⊢

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant770408aa83260eb06bd451a4c00e3664ca14af0e0d00871dd481b01bfcb8afe4.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8767d1701d07bd76ecfeb5459c51d21566a06b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
