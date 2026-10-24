# finite_prefix_does_not_force_sublinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:372f6d05-eeec-7c27-6533-8bf3e3965d10",
  "kind": "theorem",
  "lexical_name": "finite_prefix_does_not_force_sublinear",
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
  "slug": "finite-prefix-does-not-force-sublinear--92da57ade7204ce9eedd467b",
  "source": {
    "blob": "7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92da57ade7204ce9eedd467b786e5fa9eb7225165b36a3256d5d48211ed03c1d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:372f6d05-eeec-7c27-6533-8bf3e3965d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_prefix_does_not_force_sublinear (M : ℕ) :
    ∃ f : ℕ → ℝ, (∀ n ≤ M, f n=0) ∧ ¬ UpperSublinear f := by
  refine ⟨fun n => if n ≤ M then 0 else (n:ℝ), ?_, ?_⟩
  · intro n hn; simp [hn]
  · intro h
    obtain ⟨K, hK⟩ := h (1/2) (by norm_num)
    let n := max K M+1
    have hnK : K ≤ n := by dsimp [n]; omega
    have hnM : ¬ n ≤ M := by dsimp [n]; omega
    have hn : (0:ℝ) < (n:ℝ) := by exact_mod_cast (by dsimp [n]; omega : 0 < n)
    have hh := hK n hnK
    simp only [if_neg hnM] at hh
    nlinarith

end GRWTSK.Analysis.LogarithmicGrowth
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
