# coconeN'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e3975ef30f3d3c4f686167dcd245886c29705e37117266708df74b77410978e",
  "kind": "def",
  "lexical_name": "coconeN'",
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
  "slug": "coconen--efb282ef9a97f3e6208cec82",
  "source": {
    "blob": "042e8a27e580fd852a51a7684d7538d1305a148d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 66,
    "path": "GRWTSK/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efb282ef9a97f3e6208cec8247442424c3044be97055377e72f3ed8e310a6d0f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e3975ef30f3d3c4f686167dcd245886c29705e37117266708df74b77410978e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coconeN' : Cocone X.functorN' where
  pt := X
  ι.app s := yonedaEquiv.symm s.simplex
  ι.naturality _ _ f := N.stdSimplex_map_monoOfLE_yonedaEquiv_symm_simplex (leOfHom f)

/-- If `X` is a nonsingular simplicial set, `X` is the colimit of `Δ[x.dim]`
for all nondegenerate simplices `x : X.N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/NonsingularColimit/Variante65eabd9218ff8065ca53823a2f7782c2879a189b3f8bb227c6cb49fbfb583a0.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `042e8a27e580fd852a51a7684d7538d1305a148d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
