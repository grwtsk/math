# actualDivisorPeriodicPrimitive_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c403710-6c40-a2af-709d-1e4857c4fb02",
  "kind": "theorem",
  "lexical_name": "actualDivisorPeriodicPrimitive_succ",
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
  "slug": "actualdivisorperiodicprimitive-succ--cd6718c669671b642582f326",
  "source": {
    "blob": "cb55ae09c9826bf209d294fc907ffbeae1268c79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd6718c669671b642582f326c534221b0adbf2a64b9d7ef3a001acb1dc6b9f56",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c403710-6c40-a2af-709d-1e4857c4fb02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDivisorPeriodicPrimitive_succ (d M : ℕ) (hd : 1 ≤ d) :
    actualDivisorPeriodicPrimitive d (M + 1) - actualDivisorPeriodicPrimitive d M =
      actualDivisorPeriodicResidual d M := by
  have hd0 : 0 < d := by omega
  have hz : (d : ℝ) ≠ 0 := by exact_mod_cast hd0.ne'
  have hr := Nat.mod_lt M hd0
  have he : (M + 1) % d = (M % d + 1) % d := by omega
  by_cases hlt : M % d + 1 < d
  · rw [actualDivisorPeriodicPrimitive, actualDivisorPeriodicPrimitive,
      actualDivisorPeriodicResidual, he, Nat.mod_eq_of_lt hlt, Nat.cast_add, Nat.cast_one]
    field_simp
    ring
  · have hlast : M % d + 1 = d := by omega
    have hrR : ((M % d : ℕ) : ℝ) + 1 = (d : ℝ) := by exact_mod_cast hlast
    rw [actualDivisorPeriodicPrimitive, actualDivisorPeriodicPrimitive,
      actualDivisorPeriodicResidual, he, hlast, Nat.mod_self, Nat.cast_zero]
    field_simp
    nlinarith

/-- Its global quantitative primitive bound is sharp at a half-period. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8fb69249a12240879645cb9005c7f6665f8bee95ddc9ceb24d799b1b6d2513fb.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb55ae09c9826bf209d294fc907ffbeae1268c79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
