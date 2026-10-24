# Non_ge_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67a48f47-13a6-c150-eabd-13e41cd8acdf",
  "kind": "lemma",
  "lexical_name": "Non_ge_weighted",
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
  "slug": "non-ge-weighted--f8c080b0dc9d36fb67957e86",
  "source": {
    "blob": "06be572db5b993591f746dac6e56ab695e53142a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8c080b0dc9d36fb67957e860dd8de6425e22efe126610f136a96fa038039922",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67a48f47-13a6-c150-eabd-13e41cd8acdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Non_ge_weighted :
    ((D.onLine.filter (fun z => D.m z = 1)).card : ℝ) + 2 * (D.onLine.filter (fun z => D.m z = 2)).card
      + 3 * (D.onLine.filter (fun z => 3 ≤ D.m z)).card ≤ (D.Non : ℝ) := by
  unfold Non
  have key : ∀ z ∈ D.onLine, ((if D.m z = 1 then 1 else 0) + 2 * (if D.m z = 2 then 1 else 0)
      + 3 * (if 3 ≤ D.m z then 1 else 0) : ℝ) ≤ (D.m z : ℝ) := by
    intro z _
    have h1 := D.one_le_m z
    by_cases a : D.m z = 1
    · simp [a]
    by_cases b : D.m z = 2
    · simp [b]
    have c3 : 3 ≤ D.m z := by omega
    rw [if_neg a, if_neg b, if_pos c3]; norm_num
    exact_mod_cast c3
  have := Finset.sum_le_sum key
  rw [Nat.cast_sum]
  refine le_trans (le_of_eq ?_) this
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib, ← Finset.mul_sum, ← Finset.mul_sum,
    Finset.sum_boole, Finset.sum_boole, Finset.sum_boole]

/-- **c = 2 at the block level**:  4·tr Â − ‖Â‖² − 2N(I′) ≤ s₁   (Â := c⁻¹·A = blockP + blockQ, c = aL²). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variante64bc693beba0b3d3a86925de2a2a30a3a504114399a6afb45f39cabf38c28eb.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06be572db5b993591f746dac6e56ab695e53142a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
