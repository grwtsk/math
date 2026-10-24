# directLimitIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eb01d944c4873335cfda109c2f43699a748ee20fad0a13eb6957e51704440557",
  "kind": "def",
  "lexical_name": "directLimitIsColimit",
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
  "slug": "directlimitiscolimit--77bef1710070c30c94a97536",
  "source": {
    "blob": "6eb8e46e41c9d11d718538de7efd521aaade0d63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 249,
    "path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77bef1710070c30c94a97536ec2d76c0be3ab276a80ba228148db9be1850a10b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eb01d944c4873335cfda109c2f43699a748ee20fad0a13eb6957e51704440557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directLimitIsColimit : IsColimit (directLimitCocone G f) where
  desc s := ofHom <|
    Module.DirectLimit.lift R ι G f (fun i => (s.ι.app i).hom) fun i j h x => by
      simp only [Functor.const_obj_obj]
      rw [← s.w (homOfLE h)]
      rfl
  fac s i := by
    ext
    dsimp only [hom_comp, directLimitCocone, hom_ofHom, LinearMap.comp_apply]
    apply DirectLimit.lift_of
  uniq s m h := by
    have :
      s.ι.app = fun i =>
        (ofHom (DirectLimit.of R ι (fun i => G i) (fun i j H => f i j H) i)) ≫ m := by
      funext i
      rw [← h]
      rfl
    ext
    simp only [this]
    apply Module.DirectLimit.lift_unique

end DirectLimit

end ModuleCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Limits/Variantbedd51e3d9d0d1bc2f64eccee4149304da0f3df84113eddfbe1f71807ea55cce.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6eb8e46e41c9d11d718538de7efd521aaade0d63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
