# finprod_mem_finset_product'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17957197-455b-cb4c-944b-b27622a67ffa",
  "kind": "theorem",
  "lexical_name": "finprod_mem_finset_product'",
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
  "slug": "finprod-mem-finset-product--530215dfa53e224603185a0c",
  "source": {
    "blob": "ab869394c375b004fe241b59725ad579aaab9942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1272,
    "line": 1248,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530215dfa53e224603185a0cc49e571767a41412f9af929a430cd81b410b4307",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17957197-455b-cb4c-944b-b27622a67ffa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1248–1272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_mem_finset_product' [DecidableEq α] [DecidableEq β] (s : Finset (α × β))
    (f : α × β → M) :
    (∏ᶠ (ab) (_ : ab ∈ s), f ab) =
      ∏ᶠ (a) (b) (_ : b ∈ (s.filter fun ab => Prod.fst ab = a).image Prod.snd), f (a, b) := by
  have :
    ∀ a,
      (∏ i : β in (s.filter fun ab => Prod.fst ab = a).image Prod.snd, f (a, i)) =
        (Finset.filter (fun ab => Prod.fst ab = a) s).prod f := by
    refine' fun a => Finset.prod_bij (fun b _ => (a, b)) _ _ _ _ <;> simp
    suffices ∀ a' b, (a', b) ∈ s → a' = a → (a, b) ∈ s ∧ a' = a by simpa
    rintro a' b hp rfl
    exact ⟨hp, rfl⟩
  rw [finprod_mem_finset_eq_prod]
  simp_rw [finprod_mem_finset_eq_prod, this]
  rw [finprod_eq_prod_of_mulSupport_subset _
      (s.mulSupport_of_fiberwise_prod_subset_image f Prod.fst),
    ← Finset.prod_fiberwise_of_maps_to (t := Finset.image Prod.fst s) _ f]
  -- `finish` could close the goal here
  simp only [Finset.mem_image, Prod.mk.eta]
  exact fun x hx => ⟨x, hx, rfl⟩
#align finprod_mem_finset_product' finprod_mem_finset_product'
#align finsum_mem_finset_product' finsum_mem_finset_product'

/-- See also `finprod_mem_finset_product'`. -/
@[to_additive "See also `finsum_mem_finset_product'`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean#L1248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab869394c375b004fe241b59725ad579aaab9942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
