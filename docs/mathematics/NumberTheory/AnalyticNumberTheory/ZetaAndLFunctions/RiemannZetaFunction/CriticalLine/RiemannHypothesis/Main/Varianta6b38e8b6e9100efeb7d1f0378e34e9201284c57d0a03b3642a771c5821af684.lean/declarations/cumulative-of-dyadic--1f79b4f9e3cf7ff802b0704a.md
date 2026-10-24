# cumulative_of_dyadic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7c766b9-7a27-7200-c09c-7f0384779043",
  "kind": "lemma",
  "lexical_name": "cumulative_of_dyadic",
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
  "slug": "cumulative-of-dyadic--1f79b4f9e3cf7ff802b0704a",
  "source": {
    "blob": "06140d15ff88511a9eb47c39313a8f5d5767ce06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f79b4f9e3cf7ff802b0704ad9a8f1267fbeec2f3d00b98c027b9767eb043ebf",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7c766b9-7a27-7200-c09c-7f0384779043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cumulative_of_dyadic (hR : RiemannVonMangoldt (zetaZeros hs)) {c : ℝ} {f : ℝ → ℝ → ℕ}
    (hf_add : ∀ a b d : ℝ, a ≤ b → b ≤ d → f a d = f a b + f b d)
    (h : ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (c - ε) * (Ncount T (2 * T) : ℝ) ≤ f T (2 * T)) :
    ∀ ε > 0, ∃ T₀ : ℝ, ∀ T ≥ T₀, (c - ε) * (Ncount 0 T : ℝ) ≤ f 0 T := by
  refine Assembly.dyadic (f := fun a b => (f a b : ℝ)) (g := fun a b => (Ncount a b : ℝ))
    (c := c) ?_ ?_ (fun _ _ => Nat.cast_nonneg _) (fun _ _ => Nat.cast_nonneg _)
    (tendsto_Ncount_zero_atTop hs hR) h
  · intro a b d hab hbd
    exact_mod_cast hf_add a b d hab hbd
  · intro a b d hab hbd
    have := Assembly.N_add (zetaZeros hs) hab hbd
    simp only [zetaZeros_N] at this
    exact_mod_cast this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Varianta6b38e8b6e9100efeb7d1f0378e34e9201284c57d0a03b3642a771c5821af684.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06140d15ff88511a9eb47c39313a8f5d5767ce06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
