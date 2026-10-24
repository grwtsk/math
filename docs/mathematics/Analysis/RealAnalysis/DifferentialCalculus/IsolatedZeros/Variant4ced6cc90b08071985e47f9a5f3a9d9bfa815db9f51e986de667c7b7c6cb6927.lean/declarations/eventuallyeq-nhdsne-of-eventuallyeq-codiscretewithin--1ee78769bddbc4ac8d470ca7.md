# eventuallyEq_nhdsNE_of_eventuallyEq_codiscreteWithin

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
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2797561b-eeeb-e90b-0634-95364183fac2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21ae385e-0737-e9fd-4fb8-35b43d168cff",
  "kind": "theorem",
  "lexical_name": "eventuallyEq_nhdsNE_of_eventuallyEq_codiscreteWithin",
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
  "slug": "eventuallyeq-nhdsne-of-eventuallyeq-codiscretewithin--1ee78769bddbc4ac8d470ca7",
  "source": {
    "blob": "9ccda2e2ab46201ee8d04d7f9532a625682a90d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variant4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ee78769bddbc4ac8d470ca7a99285e7bd9c57958d2acd350747e9322fb66267",
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

Occurrence: `result:21ae385e-0737-e9fd-4fb8-35b43d168cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventuallyEq_nhdsNE_of_eventuallyEq_codiscreteWithin (hf : MeromorphicAt f x)
    (hg : MeromorphicAt g x) (h₁x : x ∈ U) (h₂x : AccPt x (𝓟 U)) (h : f =ᶠ[codiscreteWithin U] g) :
    f =ᶠ[𝓝[≠] x] g := by
  rw [eventuallyEq_iff_sub] at *
  apply (hf.sub hg).eventuallyEq_zero_nhdsNE_of_eventuallyEq_zero_codiscreteWithin h₁x h₂x h

/-
Variant of `MeromorphicAt.eventuallyEq_nhdsNE_of_eventuallyEq_codiscreteWithin`, as a statement
about meromorphic functions that agree outside a set codiscrete within a perfect set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variant4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IsolatedZeros/Variant4ced6cc90b08071985e47f9a5f3a9d9bfa815db9f51e986de667c7b7c6cb6927.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ccda2e2ab46201ee8d04d7f9532a625682a90d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
