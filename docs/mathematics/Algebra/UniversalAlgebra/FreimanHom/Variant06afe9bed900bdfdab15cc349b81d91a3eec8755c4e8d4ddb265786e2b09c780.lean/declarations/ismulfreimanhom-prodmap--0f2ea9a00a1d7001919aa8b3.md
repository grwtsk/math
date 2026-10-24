# IsMulFreimanHom.prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0990c1a-631e-2c54-027a-f3ce8a36613d",
  "kind": "lemma",
  "lexical_name": "IsMulFreimanHom.prodMap",
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
  "slug": "ismulfreimanhom-prodmap--0f2ea9a00a1d7001919aa8b3",
  "source": {
    "blob": "56fecdd60efa4df5eef11b5380d8f76593fd149a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 358,
    "path": "GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f2ea9a00a1d7001919aa8b375f7685d021b3684616d75ad9316152507834e5b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0990c1a-631e-2c54-027a-f3ce8a36613d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMulFreimanHom.prodMap (h₁ : IsMulFreimanHom n A₁ B₁ f₁) (h₂ : IsMulFreimanHom n A₂ B₂ f₂) :
    IsMulFreimanHom n (A₁ ×ˢ A₂) (B₁ ×ˢ B₂) (Prod.map f₁ f₂) where
  mapsTo := h₁.mapsTo.prodMap h₂.mapsTo
  map_prod_eq_map_prod s t hsA htA hs ht h := by
    simp only [mem_prod, forall_and, Prod.forall] at hsA htA
    simp only [Prod.ext_iff, fst_prod, snd_prod, map_map, Function.comp_apply, Prod.map_fst,
      Prod.map_snd] at h ⊢
    rw [← Function.comp_def, ← map_map, ← map_map, ← Function.comp_def f₂, ← map_map, ← map_map]
    exact ⟨h₁.map_prod_eq_map_prod (by simpa using hsA.1) (by simpa using htA.1) (by simpa)
      (by simpa) h.1, h₂.map_prod_eq_map_prod (by simpa [@forall_swap α₁] using hsA.2)
      (by simpa [@forall_swap α₁] using htA.2) (by simpa) (by simpa) h.2⟩

@[deprecated (since := "2025-03-11")]
alias IsAddFreimanHom.sum := IsAddFreimanHom.prodMap

@[to_additive existing, deprecated (since := "2025-03-11")]
alias IsMulFreimanHom.prod := IsMulFreimanHom.prodMap

@[to_additive prodMap]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/FreimanHom/Variant06afe9bed900bdfdab15cc349b81d91a3eec8755c4e8d4ddb265786e2b09c780.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56fecdd60efa4df5eef11b5380d8f76593fd149a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
