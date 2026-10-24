# map₂_distrib_le_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2e3ae50-62f3-4b3a-a7bf-8e238ec72123",
  "kind": "theorem",
  "lexical_name": "map₂_distrib_le_left",
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
  "slug": "map-distrib-le-left--1f7be5f96fe25f48f8e64de4",
  "source": {
    "blob": "be8f8ccd316f36d06e7f650cfcde99f5e7fa500d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f7be5f96fe25f48f8e64de4a8ba965f9f2df2b397dc547317e4a83962a17700",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2e3ae50-62f3-4b3a-a7bf-8e238ec72123`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map₂_distrib_le_left {m : α → δ → ε} {n : β → γ → δ} {m₁ : α → β → β'} {m₂ : α → γ → γ'}
    {n' : β' → γ' → ε} (h_distrib : ∀ a b c, m a (n b c) = n' (m₁ a b) (m₂ a c)) :
    map₂ m f (map₂ n g h) ≤ map₂ n' (map₂ m₁ f g) (map₂ m₂ f h) := by
  rintro s ⟨t₁, ⟨u₁, hu₁, v, hv, ht₁⟩, t₂, ⟨u₂, hu₂, w, hw, ht₂⟩, hs⟩
  refine ⟨u₁ ∩ u₂, inter_mem hu₁ hu₂, _, image2_mem_map₂ hv hw, ?_⟩
  refine (image2_distrib_subset_left h_distrib).trans ((image2_subset ?_ ?_).trans hs)
  · exact (image2_subset_right inter_subset_left).trans ht₁
  · exact (image2_subset_right inter_subset_right).trans ht₂

/-- The other direction does not hold because of the `h`-`h` cross terms on the RHS. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be8f8ccd316f36d06e7f650cfcde99f5e7fa500d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
