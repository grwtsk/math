# eq_sign_of_surjective_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:865006f2-9a89-0d5b-062d-1a472562c5d6",
  "kind": "theorem",
  "lexical_name": "eq_sign_of_surjective_hom",
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
  "slug": "eq-sign-of-surjective-hom--a80501c25cac26ee61db30b0",
  "source": {
    "blob": "c096674d62f3cc92c25538e8b45a9a77f294cece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 664,
    "line": 640,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a80501c25cac26ee61db30b0cbace6216ffeb90b1ce93b6aeccc571c9b8d070f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:865006f2-9a89-0d5b-062d-1a472562c5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 640–664.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_sign_of_surjective_hom {s : Perm α →* ℤˣ} (hs : Surjective s) : s = sign :=
  have : ∀ {f}, IsSwap f → s f = -1 := fun {f} ⟨x, y, hxy, hxy'⟩ =>
    hxy'.symm ▸
      by_contradiction fun h => by
        have : ∀ f, IsSwap f → s f = 1 := fun f ⟨a, b, hab, hab'⟩ => by
          rw [← isConj_iff_eq, ← Or.resolve_right (Int.units_eq_one_or _) h, hab']
          exact s.map_isConj (isConj_swap hab hxy)
        let ⟨g, hg⟩ := hs (-1)
        let ⟨l, hl⟩ := (truncSwapFactors g).out
        have : ∀ a ∈ l.map s, a = (1 : ℤˣ) := fun a ha =>
          let ⟨g, hg⟩ := List.mem_map.1 ha
          hg.2 ▸ this _ (hl.2 _ hg.1)
        have : s l.prod = 1 := by
          rw [← l.prod_hom s, List.eq_replicate_length.2 this, List.prod_replicate, one_pow]
        rw [hl.1, hg] at this
        exact absurd this (by simp_all)
  MonoidHom.ext fun f => by
    let ⟨l, hl₁, hl₂⟩ := (truncSwapFactors f).out
    have hsl : ∀ a ∈ l.map s, a = (-1 : ℤˣ) := fun a ha =>
      let ⟨g, hg⟩ := List.mem_map.1 ha
      hg.2 ▸ this (hl₂ _ hg.1)
    rw [← hl₁, ← l.prod_hom s, List.eq_replicate_length.2 hsl, List.length_map, List.prod_replicate,
      sign_prod_list_swap hl₂]
#align equiv.perm.eq_sign_of_surjective_hom Equiv.Perm.eq_sign_of_surjective_hom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant2a83ba970423be247a7c61e8b9db0ddc00f90ee6fd180f07a80b17e42b106ca2.lean#L640).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c096674d62f3cc92c25538e8b45a9a77f294cece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
