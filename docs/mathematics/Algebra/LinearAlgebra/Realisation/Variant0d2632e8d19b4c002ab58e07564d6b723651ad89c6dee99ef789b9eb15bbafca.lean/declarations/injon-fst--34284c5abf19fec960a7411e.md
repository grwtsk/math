# injOn_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7bda775-67ee-5903-4535-385b9c9ac457",
  "kind": "lemma",
  "lexical_name": "injOn_fst",
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
  "slug": "injon-fst--34284c5abf19fec960a7411e",
  "source": {
    "blob": "48b70d9ca47fc2bca74198387059bd39e4994868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 420,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34284c5abf19fec960a7411e17af1db40fdbdb1560efadeea3d6621880b0a756",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7bda775-67ee-5903-4535-385b9c9ac457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injOn_fst : InjOn fst rl.idx := by
  rintro ⟨x, y₁⟩ hp ⟨-, y₂⟩ hq rfl
  have : IsReflexive R M := .of_isPerfPair rl.pairing
  have hfin : (fst '' rl.idx).Finite := Set.toFinite _
  have hy₁ : (rl.pairing.flip y₁) x = 2 := by simpa using rl.pairing_fst_snd hp
  have hy₂ : (rl.pairing.flip y₂) x = 2 := by simpa using rl.pairing_fst_snd hq
  have aux {p : M × N} (hp : p ∈ rl.idx) :
      MapsTo (preReflection p.1 (rl.pairing.flip p.2)) (fst '' rl.idx) (fst '' rl.idx) := by
    rintro - ⟨q, hq, rfl⟩
    exact ⟨_, rl.apply_mem_idx (rl.reflectionPair_mem hp) hq, rfl⟩
  have key := Dual.eq_of_preReflection_mapsTo' hfin (subset_span ⟨(x, y₁), by simpa⟩)
    hy₁ (by simpa using aux hp) hy₂ (by simpa using aux hq)
  have hsub : y₁ - y₂ ∈ span R (range rl.sCoroot) :=
    sub_mem (Submodule.span_subset_span ℤ R _ (rl.idx_subset_span_int_sprod_span_int hp).2)
      (Submodule.span_subset_span ℤ R _ (rl.idx_subset_span_int_sprod_span_int hq).2)
  suffices ∀ i, (rl.pairing (rl.sRoot i)) y₁ = (rl.pairing (rl.sRoot i)) y₂ from
    Prod.ext rfl <| (rl.eq_iff_forall_pairing_sRoot_eq hsub).mpr this
  intro i
  simpa using LinearMap.congr_fun key ⟨rl.sRoot i, subset_span ⟨_, rl.sPair_mem_idx i, rfl⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b70d9ca47fc2bca74198387059bd39e4994868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
