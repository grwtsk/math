# long_divisor_row_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8540c1f-9c55-2a73-09fb-3ccaef4d02a6",
  "kind": "theorem",
  "lexical_name": "long_divisor_row_increment",
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
  "slug": "long-divisor-row-increment--e78511c203a61e7819a46139",
  "source": {
    "blob": "2b3b751ca9165f6b5e3ca96de55b4a646521555a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantfe6d71a2dda64fb49452262717f2de7fbe48436c1c6dca2e9a034133d08c183f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e78511c203a61e7819a46139c1caec7ec2a5e05acdfc1f8759b52b340414f9dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantfe6d71a2dda64fb49452262717f2de7fbe48436c1c6dca2e9a034133d08c183f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8540c1f-9c55-2a73-09fb-3ccaef4d02a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem long_divisor_row_increment (U n : ℕ) (hn : 0 < n) :
    longDivisorRow (U + 1) n - longDivisorRow U n =
      -(if U + 1 ∣ n then (moebius (U + 1) : ℝ) else 0) := by
  classical
  have hcut (d : ℕ) :
      (if U + 1 < d then (moebius d : ℝ) else 0) -
        (if U < d then (moebius d : ℝ) else 0) =
      if d = U + 1 then -(moebius d : ℝ) else 0 := by
    split_ifs <;> first | omega | ring
  simp only [longDivisorRow, Finset.sum_filter]
  rw [← Finset.sum_sub_distrib]
  simp_rw [hcut]
  rw [Finset.sum_ite_eq']
  simp [Nat.mem_divisors, hn.ne']
  split_ifs <;> ring

/-- Refinement cost is an exact squarefree-divisor inventory, rather than a
bound determined just by how often the row's cutoff support enters or leaves. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantfe6d71a2dda64fb49452262717f2de7fbe48436c1c6dca2e9a034133d08c183f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/56d8eae0789a12569f7caca84727a79e7ed3e6dee4a438010d0fe8b2b51cefd3ReplayAudit/Variantfe6d71a2dda64fb49452262717f2de7fbe48436c1c6dca2e9a034133d08c183f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b3b751ca9165f6b5e3ca96de55b4a646521555a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
