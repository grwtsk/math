# divisor_congr_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de6bb57254025d007357a7df0a8e3607b386ac69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0659b9ac1ff8f30e489088169add5b72b0a1ad2dfbf69071e6ecce48a6ab39b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62863ca1-5512-0a54-71fe-1a3098b09969",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:771070b4-eee7-37c6-ce7d-9500df890f30",
  "kind": "theorem",
  "lexical_name": "divisor_congr_codiscreteWithin",
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
  "slug": "divisor-congr-codiscretewithin--3ba3d33243fc937274921e47",
  "source": {
    "blob": "de6bb57254025d007357a7df0a8e3607b386ac69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Divisor/Variant0659b9ac1ff8f30e489088169add5b72b0a1ad2dfbf69071e6ecce48a6ab39b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba3d33243fc937274921e47d5968d4bf826b833a277618c2bc0787e7292c7a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Divisor/Variant0659b9ac1ff8f30e489088169add5b72b0a1ad2dfbf69071e6ecce48a6ab39b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:771070b4-eee7-37c6-ce7d-9500df890f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisor_congr_codiscreteWithin {f₁ f₂ : 𝕜 → E} (h₁ : f₁ =ᶠ[codiscreteWithin U] f₂)
    (h₂ : IsOpen U) :
    divisor f₁ U = divisor f₂ U := by
  by_cases hf₁ : MeromorphicOn f₁ U
  · ext x
    by_cases hx : x ∈ U
    · simp only [hf₁, hx, divisor_apply, hf₁.congr_codiscreteWithin h₁ h₂]
      congr 1
      apply meromorphicOrderAt_congr
      simp_rw [EventuallyEq, Filter.Eventually, mem_codiscreteWithin,
        disjoint_principal_right] at h₁
      have : U ∈ 𝓝[≠] x := by
        apply mem_nhdsWithin.mpr
        use U, h₂, hx, Set.inter_subset_left
      filter_upwards [this, h₁ x hx] with a h₁a h₂a
      simp only [Set.mem_compl_iff, Set.mem_sdiff, Set.mem_ofPred_eq, not_and] at h₂a
      tauto
    · simp [hx]
  · simp [divisor, hf₁, (meromorphicOn_congr_codiscreteWithin h₁ h₂).not.1 hf₁]

/-!
## Divisors of Analytic Functions
-/

/-- Analytic functions have non-negative divisors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Divisor/Variant0659b9ac1ff8f30e489088169add5b72b0a1ad2dfbf69071e6ecce48a6ab39b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Divisor/Variant0659b9ac1ff8f30e489088169add5b72b0a1ad2dfbf69071e6ecce48a6ab39b3.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6bb57254025d007357a7df0a8e3607b386ac69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
