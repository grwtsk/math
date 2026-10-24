# prod_involution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4ccd6209-16ca-1abe-41b4-c6e96ecd6276",
  "kind": "theorem",
  "lexical_name": "prod_involution",
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
  "slug": "prod-involution--871427346e6e2dcb11b78450",
  "source": {
    "blob": "35547f24c47a5d4fdf8c8ef4fa395ba28e1e06a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1526,
    "line": 1482,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d4af2afcd6134c7937e7da87cb4f82c7042b622de094e83b459487167120945.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:871427346e6e2dcb11b7845083beda65025dfafc7e461037175089536d09028b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d4af2afcd6134c7937e7da87cb4f82c7042b622de094e83b459487167120945.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ccd6209-16ca-1abe-41b4-c6e96ecd6276`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1482–1526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_involution {s : Finset α} {f : α → β} :
    ∀ (g : ∀ a ∈ s, α) (_ : ∀ a ha, f a * f (g a ha) = 1) (_ : ∀ a ha, f a ≠ 1 → g a ha ≠ a)
      (g_mem : ∀ a ha, g a ha ∈ s) (_ : ∀ a ha, g (g a ha) (g_mem a ha) = a),
      ∏ x in s, f x = 1 := by
  haveI := Classical.decEq α; haveI := Classical.decEq β
  exact
    Finset.strongInductionOn s fun s ih g h g_ne g_mem g_inv =>
      s.eq_empty_or_nonempty.elim (fun hs => hs.symm ▸ rfl) fun ⟨x, hx⟩ =>
        have hmem : ∀ y ∈ (s.erase x).erase (g x hx), y ∈ s := fun y hy =>
          mem_of_mem_erase (mem_of_mem_erase hy)
        have g_inj : ∀ {x hx y hy}, g x hx = g y hy → x = y := fun {x hx y hy} h => by
          rw [← g_inv x hx, ← g_inv y hy]; simp [h]
        have ih' : (∏ y in erase (erase s x) (g x hx), f y) = (1 : β) :=
          ih ((s.erase x).erase (g x hx))
            ⟨Subset.trans (erase_subset _ _) (erase_subset _ _), fun h =>
              not_mem_erase (g x hx) (s.erase x) (h (g_mem x hx))⟩
            (fun y hy => g y (hmem y hy)) (fun y hy => h y (hmem y hy))
            (fun y hy => g_ne y (hmem y hy))
            (fun y hy =>
              mem_erase.2
                ⟨fun h : g y _ = g x hx => by simp [g_inj h] at hy,
                  mem_erase.2
                    ⟨fun h : g y _ = x => by
                      have : y = g x hx := g_inv y (hmem y hy) ▸ by simp [h]
                      simp [this] at hy, g_mem y (hmem y hy)⟩⟩)
            fun y hy => g_inv y (hmem y hy)
        if hx1 : f x = 1 then
          ih' ▸
            Eq.symm
              (prod_subset hmem fun y hy hy₁ =>
                have : y = x ∨ y = g x hx := by
                  simpa [hy, -not_and, mem_erase, not_and_or, or_comm] using hy₁
                this.elim (fun hy => hy.symm ▸ hx1) fun hy =>
                  h x hx ▸ hy ▸ hx1.symm ▸ (one_mul _).symm)
        else by
          rw [← insert_erase hx, prod_insert (not_mem_erase _ _), ←
            insert_erase (mem_erase.2 ⟨g_ne x hx hx1, g_mem x hx⟩),
            prod_insert (not_mem_erase _ _), ih', mul_one, h x hx]
#align finset.prod_involution Finset.prod_involution
#align finset.sum_involution Finset.sum_involution

/-- The product of the composition of functions `f` and `g`, is the product over `b ∈ s.image g` of
`f b` to the power of the cardinality of the fibre of `b`. See also `Finset.prod_image`. -/
@[to_additive "The sum of the composition of functions `f` and `g`, is the sum over `b ∈ s.image g`
of `f b` times of the cardinality of the fibre of `b`. See also `Finset.sum_image`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant1d4af2afcd6134c7937e7da87cb4f82c7042b622de094e83b459487167120945.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant1d4af2afcd6134c7937e7da87cb4f82c7042b622de094e83b459487167120945.lean#L1482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35547f24c47a5d4fdf8c8ef4fa395ba28e1e06a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
