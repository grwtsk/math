# eventually_nhdsSet_eventuallyEq_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ccda2e2ab46201ee8d04d7f9532a625682a90d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ae841dc-e38a-f747-3ce0-e3e96e70be00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34060eb5-2420-9530-6d10-490a9febf83f",
  "kind": "theorem",
  "lexical_name": "eventually_nhdsSet_eventuallyEq_codiscreteWithin",
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
  "slug": "eventually-nhdsset-eventuallyeq-codiscretewithin--52664d564eb6f2addb64ebad",
  "source": {
    "blob": "9ccda2e2ab46201ee8d04d7f9532a625682a90d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variant4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52664d564eb6f2addb64ebade941dfb4fe737c24d7dbf5b9ffe3762323e6ae88",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variant4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34060eb5-2420-9530-6d10-490a9febf83f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_nhdsSet_eventuallyEq_codiscreteWithin (hf : MeromorphicOn f U)
    (hg : MeromorphicOn g U) (hU : Preperfect U) (h : f =ᶠ[codiscreteWithin U] g) :
    ∀ᶠ x in 𝓝ˢ U, f =ᶠ[𝓝[≠] x] g := by
  rw [eventually_nhdsSet_iff_exists]
  use {x | f =ᶠ[𝓝[≠] x] g}
  simp only [Set.mem_ofPred_eq, imp_self, implies_true, and_true]
  constructor
  · apply isOpen_setOfPred_eventually_nhdsWithin
  · intro x hx
    rw [Set.mem_ofPred]
    exact eventuallyEq_nhdsNE_of_eventuallyEq_codiscreteWithin (hf x hx) (hg x hx) hx (hU x hx) h

end MeromorphicAt

/-- If meromorphic `f` and `g` agree on `codiscreteWithin U`, so do their derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variant4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variant4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ccda2e2ab46201ee8d04d7f9532a625682a90d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
