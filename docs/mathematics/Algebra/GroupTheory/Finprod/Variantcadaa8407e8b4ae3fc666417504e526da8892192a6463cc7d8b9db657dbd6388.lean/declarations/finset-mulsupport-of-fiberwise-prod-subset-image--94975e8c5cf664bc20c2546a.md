# Finset.mulSupport_of_fiberwise_prod_subset_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:781c8c46-9797-98e0-641d-6151b3fa3388",
  "kind": "theorem",
  "lexical_name": "Finset.mulSupport_of_fiberwise_prod_subset_image",
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
  "slug": "finset-mulsupport-of-fiberwise-prod-subset-image--94975e8c5cf664bc20c2546a",
  "source": {
    "blob": "ab869394c375b004fe241b59725ad579aaab9942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1247,
    "line": 1231,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94975e8c5cf664bc20c2546a76847ce385f6d58354f994859074dbedcd971c59",
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

Occurrence: `result:781c8c46-9797-98e0-641d-6151b3fa3388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1231–1247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.mulSupport_of_fiberwise_prod_subset_image [DecidableEq β] (s : Finset α) (f : α → M)
    (g : α → β) : (mulSupport fun b => (s.filter fun a => g a = b).prod f) ⊆ s.image g := by
  simp only [Finset.coe_image, Set.mem_image, Finset.mem_coe, Function.support_subset_iff]
  intro b h
  suffices (s.filter fun a : α => g a = b).Nonempty by
    simpa only [s.fiber_nonempty_iff_mem_image g b, Finset.mem_image, exists_prop]
  exact Finset.nonempty_of_prod_ne_one h
#align finset.mul_support_of_fiberwise_prod_subset_image Finset.mulSupport_of_fiberwise_prod_subset_image
#align finset.support_of_fiberwise_sum_subset_image Finset.support_of_fiberwise_sum_subset_image

/-- Note that `b ∈ (s.filter (fun ab => Prod.fst ab = a)).image Prod.snd` iff `(a, b) ∈ s` so
we can simplify the right hand side of this lemma. However the form stated here is more useful for
iterating this lemma, e.g., if we have `f : α × β × γ → M`. -/
@[to_additive
      "Note that `b ∈ (s.filter (fun ab => Prod.fst ab = a)).image Prod.snd` iff `(a, b) ∈ s` so
      we can simplify the right hand side of this lemma. However the form stated here is more
      useful for iterating this lemma, e.g., if we have `f : α × β × γ → M`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variantcadaa8407e8b4ae3fc666417504e526da8892192a6463cc7d8b9db657dbd6388.lean#L1231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab869394c375b004fe241b59725ad579aaab9942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
