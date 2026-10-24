# convexOn_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ca7e9e3e158786edfcfba8c293e99a476bfeecc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86f49d41-2bd3-0103-83ce-25d78751d5b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71c7bf90-c856-e9b5-ea16-fed9a1bcbf05",
  "kind": "theorem",
  "lexical_name": "convexOn_pow",
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
  "slug": "convexon-pow--ba19167f1016f380d3e2bf07",
  "source": {
    "blob": "3ca7e9e3e158786edfcfba8c293e99a476bfeecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 77,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba19167f1016f380d3e2bf0793d8608fd0cf869ba3a4b53daf2eec43591d562c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71c7bf90-c856-e9b5-ea16-fed9a1bcbf05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convexOn_pow (n : ℕ) : ConvexOn ℝ (Ici 0) fun x : ℝ => x ^ n := by
  induction' n with k IH
  · exact convexOn_const (1 : ℝ) (convex_Ici _)
  refine' ⟨convex_Ici _, _⟩
  rintro a (ha : 0 ≤ a) b (hb : 0 ≤ b) μ ν hμ hν h
  have H := IH.2 ha hb hμ hν h
  have : 0 ≤ (b ^ k - a ^ k) * (b - a) * μ * ν := by
    cases' le_or_lt a b with hab hab
    · have : a ^ k ≤ b ^ k := by gcongr
      have : 0 ≤ (b ^ k - a ^ k) * (b - a) := by nlinarith
      positivity
    · have : b ^ k ≤ a ^ k := by gcongr
      have : 0 ≤ (b ^ k - a ^ k) * (b - a) := by nlinarith
      positivity
  calc
    (μ * a + ν * b) ^ k.succ = (μ * a + ν * b) * (μ * a + ν * b) ^ k := pow_succ _ _
    _ ≤ (μ * a + ν * b) * (μ * a ^ k + ν * b ^ k) := by gcongr; exact H
    _ ≤ (μ * a + ν * b) * (μ * a ^ k + ν * b ^ k) + (b ^ k - a ^ k) * (b - a) * μ * ν := by linarith
    _ = (μ + ν) * (μ * a ^ k.succ + ν * b ^ k.succ) := by rw [Nat.succ_eq_add_one]; ring
    _ = μ * a ^ k.succ + ν * b ^ k.succ := by rw [h]; ring
#align convex_on_pow convexOn_pow

/-- `x^n`, `n : ℕ` is convex on the whole real line whenever `n` is even.

We give an elementary proof rather than using the second derivative test, since this lemma is
needed early in the analysis library. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant3c51ea6c93b28b637490d77c991175f3d95350c22320098237fd5c748f121806.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ca7e9e3e158786edfcfba8c293e99a476bfeecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
