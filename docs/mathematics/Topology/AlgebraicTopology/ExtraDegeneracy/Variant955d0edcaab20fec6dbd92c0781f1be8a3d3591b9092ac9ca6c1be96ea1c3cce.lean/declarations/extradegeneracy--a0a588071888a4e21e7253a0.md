# extraDegeneracy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac5601fc18c20f5508d3c7c70cbf06c065cf3f4908731c3396169c560754b151",
  "kind": "def",
  "lexical_name": "extraDegeneracy",
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
  "slug": "extradegeneracy--a0a588071888a4e21e7253a0",
  "source": {
    "blob": "17d777cc1fdcd88655f3514430bce9926036d134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 284,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0a588071888a4e21e7253a0d8bde60ac6650ce20f25b2d9d1eedfc8abcc6c13",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac5601fc18c20f5508d3c7c70cbf06c065cf3f4908731c3396169c560754b151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def extraDegeneracy (Δ : SimplexCategory) :
    SimplicialObject.Augmented.ExtraDegeneracy (stdSimplex.obj Δ) where
  s' := ↾fun _ ↦ objMk (OrderHom.const _ 0)
  s _ := ↾fun f ↦ objEquiv.symm (shift (objEquiv f))
  s'_comp_ε := by
    dsimp
    subsingleton
  s₀_comp_δ₁ := by
    dsimp
    ext x
    apply objEquiv.injective
    ext j
    fin_cases j
    rfl
  s_comp_δ₀ n := by
    ext φ
    apply objEquiv.injective
    apply SimplexCategory.Hom.ext
    ext i : 2
    dsimp [SimplicialObject.δ, SimplexCategory.δ, SSet.stdSimplex,
      objEquiv, Equiv.ulift, uliftFunctor]
  s_comp_δ n i := by
    ext φ
    apply objEquiv.injective
    apply SimplexCategory.Hom.ext
    ext j : 2
    dsimp [SimplicialObject.δ, SimplexCategory.δ, SSet.stdSimplex,
      objEquiv, Equiv.ulift, uliftFunctor]
    cases j using Fin.cases <;> simp
  s_comp_σ n i := by
    ext φ
    apply objEquiv.injective
    apply SimplexCategory.Hom.ext
    ext j : 2
    dsimp [SimplicialObject.σ, SimplexCategory.σ, SSet.stdSimplex, objEquiv, Equiv.ulift,
      uliftFunctor, Function.comp_def]
    cases j using Fin.cases <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant955d0edcaab20fec6dbd92c0781f1be8a3d3591b9092ac9ca6c1be96ea1c3cce.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d777cc1fdcd88655f3514430bce9926036d134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
