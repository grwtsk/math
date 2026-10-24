# exists_one_le_pow_mul_dist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f2603f5349462904f39915f1be348c86a6b18f3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc7ff75c-65fd-8d87-4e15-d0008c71a6de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0d54d6c-0c18-d238-fff3-2e2bb44310fb",
  "kind": "theorem",
  "lexical_name": "exists_one_le_pow_mul_dist",
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
  "slug": "exists-one-le-pow-mul-dist--b77ddb3190a496f8097fea08",
  "source": {
    "blob": "f2603f5349462904f39915f1be348c86a6b18f3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 91,
    "path": "GRWTSK/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77ddb3190a496f8097fea08504daa375676e6aa69f37da31cad9f4675a6e137",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0d54d6c-0c18-d238-fff3-2e2bb44310fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_one_le_pow_mul_dist {Z N R : Type*} [PseudoMetricSpace R] {d : N → ℝ}
    {j : Z → N → R} {f : R → R} {α : R} {ε M : ℝ}
    -- denominators are positive
    (d0 : ∀ a : N, 1 ≤ d a)
    (e0 : 0 < ε)
    -- function is Lipschitz at α
    (B : ∀ ⦃y : R⦄, y ∈ closedBall α ε → dist (f α) (f y) ≤ dist α y * M)
    -- clear denominators
    (L : ∀ ⦃z : Z⦄, ∀ ⦃a : N⦄, j z a ∈ closedBall α ε → 1 ≤ d a * dist (f α) (f (j z a))) :
    ∃ A : ℝ, 0 < A ∧ ∀ z : Z, ∀ a : N, 1 ≤ d a * (dist α (j z a) * A) := by
  -- A useful inequality to keep at hand
  have me0 : 0 < max (1 / ε) M := lt_max_iff.mpr (Or.inl (one_div_pos.mpr e0))
  -- The maximum between `1 / ε` and `M` works
  refine ⟨max (1 / ε) M, me0, fun z a => ?_⟩
  -- First, let's deal with the easy case in which we are far away from `α`
  by_cases dm1 : 1 ≤ dist α (j z a) * max (1 / ε) M
  · exact one_le_mul_of_one_le_of_one_le (d0 a) dm1
  · -- `j z a = z / (a + 1)`: we prove that this ratio is close to `α`
    have : j z a ∈ closedBall α ε := by
      refine mem_closedBall'.mp (le_trans ?_ ((one_div_le me0 e0).mpr (le_max_left _ _)))
      exact (le_div_iff₀ me0).mpr (not_le.mp dm1).le
    -- use the "separation from `1`" (assumption `L`) for numerators,
    refine (L this).trans ?_
    -- remove a common factor and use the Lipschitz assumption `B`
    gcongr
    · exact zero_le_one.trans (d0 a)
    · refine (B this).trans ?_
      gcongr
      apply le_max_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant8d234d3d5650d76af56e294e45f954d9f82c16dcec07a863979e3923a7df8f21.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2603f5349462904f39915f1be348c86a6b18f3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
