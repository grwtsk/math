# coupled_cutoff_active

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c0445ac2-b12e-8898-4412-09b70530f491",
  "kind": "theorem",
  "lexical_name": "coupled_cutoff_active",
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
  "slug": "coupled-cutoff-active--3f4f6d4416d82d6d4c604ede",
  "source": {
    "blob": "004af19e8575b5d7b6551d846c8a82b16fd6c921",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 75,
    "path": "GRWTSK/Analysis/Calculus/CompactCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f4f6d4416d82d6d4c604eded22776ab45a2af7b24fefe3fe72513f16c12b5cf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0445ac2-b12e-8898-4412-09b70530f491`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coupled_cutoff_active {ι : Type*} [Fintype ι]
    (W : ι→ℝ→ℂ) (V : ℝ→ℂ) (a y M : ι→ℝ)
    (hwindow : ∀j z,W j z≠0→|z|≤M j)
    (hVone : ∀s,|s|≤∑j : ι,|a j| *M j→V s=1)
    (hprod : (∏j : ι,W j (y j))≠0) : V (∑j : ι,a j*y j)=1 := by
  classical
  apply hVone
  calc
    |∑j : ι,a j*y j|≤∑j : ι,|a j*y j| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑j : ι,|a j| *M j := by
      apply Finset.sum_le_sum
      intro j hj
      have hnonzero : W j (y j)≠0 :=
        (Finset.prod_ne_zero_iff.mp hprod) j (Finset.mem_univ j)
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (hwindow j (y j) hnonzero) (abs_nonneg _)

end
end GRWTSK.Analysis.Calculus.CompactCutoff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CompactCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Calculus/CompactCutoff.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `004af19e8575b5d7b6551d846c8a82b16fd6c921` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
