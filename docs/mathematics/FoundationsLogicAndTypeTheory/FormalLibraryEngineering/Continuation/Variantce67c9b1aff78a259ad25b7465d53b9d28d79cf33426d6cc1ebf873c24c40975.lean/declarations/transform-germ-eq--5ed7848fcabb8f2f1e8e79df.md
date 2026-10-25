# transform_germ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70bf4b0ea65a661d631b19e28a7280bc29e1e6bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27077a0b-b358-dae7-12c1-054805a3281d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ebe3ece-bcdb-65c5-5f8e-ef526a3512a1",
  "kind": "theorem",
  "lexical_name": "transform_germ_eq",
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
  "slug": "transform-germ-eq--5ed7848fcabb8f2f1e8e79df",
  "source": {
    "blob": "70bf4b0ea65a661d631b19e28a7280bc29e1e6bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ed7848fcabb8f2f1e8e79df154ac990e869d3e1cf644b20bd7eedf8c8343723",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ebe3ece-bcdb-65c5-5f8e-ef526a3512a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transform_germ_eq (F : ℂ → ℂ)
    (hF : MeromorphicOn F {s : ℂ | 0 < s.re})
    (hinit : ∀ s : ℂ, 1 < s.re → F s = transform X μ s)
    (a : ℝ) (ha : 0 ≤ a)
    (hconv : ∀ t : ℝ, a < t → Integrable (fun ω ↦ Real.exp (-t * X ω)) μ)
    (s : ℂ) (hs : a < s.re) : F =ᶠ[𝓝[≠] s] transform X μ := by
  let b : ℂ := (max 1 a + 1 : ℝ)
  have hb1 : 1 < b.re := by dsimp [b]; linarith [le_max_left (1 : ℝ) a]
  have hba : a < b.re := by dsimp [b]; linarith [le_max_right (1 : ℝ) a]
  have heq : F =ᶠ[𝓝[≠] b] transform X μ := by
    have hn : ∀ᶠ z : ℂ in 𝓝 b, 1 < z.re :=
      (isOpen_lt continuous_const Complex.continuous_re).mem_nhds hb1
    exact (hn.filter_mono nhdsWithin_le_nhds).mono (fun z hz ↦ hinit z hz)
  have hU : IsPreconnected {z : ℂ | a < z.re} :=
    ((convex_Ioi a).linear_preimage Complex.reLm).isPreconnected
  exact meromorphic_germ_eq (fun z hz ↦ hF z (lt_of_le_of_lt ha hz))
    (fun z hz ↦ (transform_analytic a hconv z hz).meromorphicAt) hU hba hs heq

/-- A meromorphic continuation analytic on the positive real axis forces all positive
Laplace parameters to be genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuation/Variantce67c9b1aff78a259ad25b7465d53b9d28d79cf33426d6cc1ebf873c24c40975.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70bf4b0ea65a661d631b19e28a7280bc29e1e6bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
