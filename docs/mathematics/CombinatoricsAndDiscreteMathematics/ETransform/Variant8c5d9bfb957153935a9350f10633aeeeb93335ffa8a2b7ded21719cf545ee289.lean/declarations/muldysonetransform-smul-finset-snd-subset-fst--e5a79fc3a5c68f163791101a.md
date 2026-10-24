# mulDysonEtransform.smul_finset_snd_subset_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74e2a566-7f73-1a67-30e5-826bef2ba22c",
  "kind": "theorem",
  "lexical_name": "mulDysonEtransform.smul_finset_snd_subset_fst",
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
  "slug": "muldysonetransform-smul-finset-snd-subset-fst--e5a79fc3a5c68f163791101a",
  "source": {
    "blob": "a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a79fc3a5c68f163791101a9f669c5f6b134f24b69a7d5e5015b13333022760",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74e2a566-7f73-1a67-30e5-826bef2ba22c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulDysonEtransform.smul_finset_snd_subset_fst :
    e • (mulDysonEtransform e x).2 ⊆ (mulDysonEtransform e x).1 := by
  dsimp
  rw [smul_finset_inter, smul_inv_smul, inter_comm]
  exact inter_subset_union
#align finset.mul_dyson_e_transform.smul_finset_snd_subset_fst Finset.mulDysonEtransform.smul_finset_snd_subset_fst
#align finset.add_dyson_e_transform.vadd_finset_snd_subset_fst Finset.addDysonEtransform.vadd_finset_snd_subset_fst

end CommGroup

/-!
### Two unnamed e-transforms

The following two transforms both reduce the product/sum of the two sets. Further, one of them must
decrease the sum of the size of the sets (and then the other increases it).

This pair of transforms doesn't seem to be named in the literature. It is used by Sanders in his
bound on Roth numbers, and by DeVos in his proof of Cauchy-Davenport.
-/


section Group

variable [Group α] (e : α) (x : Finset α × Finset α)

/-- An **e-transform**. Turns `(s, t)` into `(s ∩ s • e, t ∪ e⁻¹ • t)`. This reduces the
product of the two sets. -/
@[to_additive (attr := simps) "An **e-transform**.
Turns `(s, t)` into `(s ∩ s +ᵥ e, t ∪ -e +ᵥ t)`. This reduces the sum of the two sets."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
