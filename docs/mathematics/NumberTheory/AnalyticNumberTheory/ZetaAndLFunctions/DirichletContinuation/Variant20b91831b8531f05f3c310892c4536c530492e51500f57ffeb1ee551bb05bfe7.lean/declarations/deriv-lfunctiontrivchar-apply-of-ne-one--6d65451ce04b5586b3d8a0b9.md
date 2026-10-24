# deriv_LFunctionTrivChar₁_apply_of_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ede3211d8b863f8b9ccc841427cb4e967d92fdc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6042c35-a648-ca91-8cb3-c10129418e99",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:017b5779-4ad8-52e3-0eda-bf70171966ae",
  "kind": "lemma",
  "lexical_name": "deriv_LFunctionTrivChar₁_apply_of_ne_one",
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
  "slug": "deriv-lfunctiontrivchar-apply-of-ne-one--6d65451ce04b5586b3d8a0b9",
  "source": {
    "blob": "ede3211d8b863f8b9ccc841427cb4e967d92fdc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 353,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d65451ce04b5586b3d8a0b99ada4a932e26aeaa10e9c7c6c1d82e88103b9599",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:017b5779-4ad8-52e3-0eda-bf70171966ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv_LFunctionTrivChar₁_apply_of_ne_one {s : ℂ} (hs : s ≠ 1) :
    deriv (LFunctionTrivChar₁ n) s =
      (s - 1) * deriv (LFunctionTrivChar n) s + LFunctionTrivChar n s := by
  have H : deriv (LFunctionTrivChar₁ n) s =
      deriv (fun w ↦ (w - 1) * LFunctionTrivChar n w) s := by
    refine eventuallyEq_iff_exists_mem.mpr ?_ |>.deriv_eq
    exact ⟨_, isOpen_ne.mem_nhds hs, fun _ hw ↦ Function.update_of_ne (Set.mem_setOf.mp hw) ..⟩
  rw [H, deriv_mul (by fun_prop) (differentiableAt_LFunction _ s (.inl hs)), deriv_sub_const,
    deriv_id'', one_mul, add_comm]

/-- The negative logarithmtic derivative of `s ↦ (s - 1) * L χ s` for a trivial
Dirichlet character `χ` is continuous away from the zeros of `L χ` (including at `s = 1`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletContinuation/Variant20b91831b8531f05f3c310892c4536c530492e51500f57ffeb1ee551bb05bfe7.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede3211d8b863f8b9ccc841427cb4e967d92fdc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
