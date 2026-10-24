# euler_maclaurin_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8c98621-0b22-9642-2d92-59e655acb1ac",
  "kind": "lemma",
  "lexical_name": "euler_maclaurin_bound",
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
  "slug": "euler-maclaurin-bound--c6ac2ad1a6e123db026e7209",
  "source": {
    "blob": "8963cbfea51252bc86b974039c63f91585533d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ac2ad1a6e123db026e72099068b666479e41958b7bd21c740b39ba794dff87",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8c98621-0b22-9642-2d92-59e655acb1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma euler_maclaurin_bound (n : ℕ) (hn : 1 ≤ n) :
    Real.eulerMascheroniConstant < γ₂ n := by
  have h_strict_anti : StrictAnti (fun n : ℕ => γ₂ (n + 1)) := by
    refine strictAnti_nat_of_succ_lt ?_
    intro n; have := euler_maclaurin_decreasing (n + 1) (by linarith); grind
  have h_tendsto : Filter.Tendsto (fun n : ℕ => γ₂ (n + 1))
      Filter.atTop (nhds eulerMascheroniConstant) := by
    exact euler_maclaurin_tendsto.comp (Filter.tendsto_add_atTop_nat 1)
  have h_lt : ∀ n : ℕ, γ₂ (n + 1) > eulerMascheroniConstant := by
    intro n
    exact lt_of_le_of_lt
      (le_of_tendsto h_tendsto <| Filter.eventually_atTop.mpr
        ⟨n + 1, fun m hm => h_strict_anti.antitone hm⟩)
      (h_strict_anti <| Nat.lt_succ_self _)
  cases n <;> grind

/-- Computational verification: `γ₂ 16 ≤ 0.577216`, using `log 2 > 0.6931471803`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8963cbfea51252bc86b974039c63f91585533d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
