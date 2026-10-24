# mangoldt_integer_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40586ceb-bac5-8247-dfd6-b38f991e7f20",
  "kind": "theorem",
  "lexical_name": "mangoldt_integer_inventory",
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
  "slug": "mangoldt-integer-inventory--e905e9afe61eb4be75708e58",
  "source": {
    "blob": "a9dcde700ff072d0679f28e164851e95ea1ecb0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc983c3378699f9396132d2d1f70a0ff42ae5dd5d6f1dfe2a67bd1dc860923f52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e905e9afe61eb4be75708e5813222b56063cf11b9985c29df1ccfb270414a7da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc983c3378699f9396132d2d1f70a0ff42ae5dd5d6f1dfe2a67bd1dc860923f52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40586ceb-bac5-8247-dfd6-b38f991e7f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem mangoldt_integer_inventory {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = ∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
      ArithmeticFunction.vonMangoldt n * plainProfile A 1 n := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment primePowerInventory
  rw [← integer_cutoff_eq]
  calc
    _ = ∑ n ∈ Finset.Icc 2 (sourceKernelCutoff A),
        ArithmeticFunction.vonMangoldt n * plainProfile A 1 n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [plainProfile_natural_eq A (by have := (Finset.mem_Icc.mp hn).1; omega)]
      rfl
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        exact Finset.mem_Icc.mpr ⟨(by have := (Finset.mem_Icc.mp hn).1; omega),
          (Finset.mem_Icc.mp hn).2⟩
      · intro n hn hnnot
        have hn1 : n=1 := by
          simp only [Finset.mem_Icc] at hn hnnot
          omega
        subst n
        simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc983c3378699f9396132d2d1f70a0ff42ae5dd5d6f1dfe2a67bd1dc860923f52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/E81fb481bb1279e39caeActualIntegerInventory/Variantc983c3378699f9396132d2d1f70a0ff42ae5dd5d6f1dfe2a67bd1dc860923f52.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9dcde700ff072d0679f28e164851e95ea1ecb0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
