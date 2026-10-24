# mertensResidual_eq_vaughan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59ece094-05a0-49b5-ed82-305484f806a3",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_vaughan",
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
  "slug": "mertensresidual-eq-vaughan--6aa612146bd5e302165d8b70",
  "source": {
    "blob": "074c1e20ebe60583948f1c113c4365f9d309eefe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 181,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa612146bd5e302165d8b705cb58276643ccebdcf0eb9740cb808190a76903b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59ece094-05a0-49b5-ed82-305484f806a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_vaughan (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = shortMangoldtSource A + shortLogSource A - shortPlainSource A +
      typeTwoSource A := by
  rw [mertensResidual_eq_plainWeight_sum A hA]
  have hq := vaughanCutoff_le_sourceKernelCutoff A hA
  rw [finite_vaughan_sum _ _ _ hq hq (fun n ↦ sourcePlainWeight A n)
    (sourcePlainWeight_zero_of_cutoff_lt A hA), typeTwoSource_eq_rectangle A hA]
  unfold shortMangoldtSource shortLogSource shortPlainSource
  congr 2
  · congr 1
    apply Finset.sum_congr rfl
    intro d hd
    rw [sourceMobiusKernel_eq_plainWeight A d (Finset.mem_Icc.mp hd).1]
    rfl
  · apply Finset.sum_congr rfl
    intro d _
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro m _
    simp only [sourcePlainKernel, Finset.mul_sum, realMoebius, Nat.cast_mul, mul_assoc]

/-- The closing Type-II gate retains all three signed short counterterms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/7d4a597dd2dbf6878511EstimateVaughanSource/Variant58b61f8e2327e8ff58753017419a7453bdb14121ccfa118838afd21d4529b7a4.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `074c1e20ebe60583948f1c113c4365f9d309eefe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
