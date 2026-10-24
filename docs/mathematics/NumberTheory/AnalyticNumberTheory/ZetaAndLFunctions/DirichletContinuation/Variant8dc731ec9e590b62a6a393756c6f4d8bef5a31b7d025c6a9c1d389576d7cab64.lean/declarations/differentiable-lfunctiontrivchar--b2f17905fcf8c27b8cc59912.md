# differentiable_LFunctionTrivChar₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f121b2bd-6b4e-c4d7-126e-ee20c03a4d13",
  "kind": "lemma",
  "lexical_name": "differentiable_LFunctionTrivChar₁",
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
  "slug": "differentiable-lfunctiontrivchar--b2f17905fcf8c27b8cc59912",
  "source": {
    "blob": "b8f5c55347e64f60429f6a522419008fed860222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 352,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2f17905fcf8c27b8cc5991244d4eb56c25464e5b70f02bfc0f028d5e00d982a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f121b2bd-6b4e-c4d7-126e-ee20c03a4d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiable_LFunctionTrivChar₁ : Differentiable ℂ (LFunctionTrivChar₁ n) := by
  rw [← differentiableOn_univ,
    ← differentiableOn_compl_singleton_and_continuousAt_iff (c := 1) Filter.univ_mem]
  refine ⟨DifferentiableOn.congr (f := fun s ↦ (s - 1) * LFunctionTrivChar n s)
    (fun _ hs ↦ DifferentiableAt.differentiableWithinAt <| by fun_prop (disch := simp_all [hs]))
   fun _ hs ↦ Function.update_of_ne (Set.mem_diff_singleton.mp hs).2 ..,
    continuousWithinAt_compl_self.mp ?_⟩
  simpa using LFunctionTrivChar_residue_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant8dc731ec9e590b62a6a393756c6f4d8bef5a31b7d025c6a9c1d389576d7cab64.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8f5c55347e64f60429f6a522419008fed860222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
