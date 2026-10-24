# long_divisor_row_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baf3dba5-ae79-9b53-0dd1-6e809970ff79",
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
  "slug": "long-divisor-row-increment--83f69981cd9562502f981ae8",
  "source": {
    "blob": "0736e6de3e050772e5803ed42ef89c961d25d928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant6541a578d78e1fdc552daa2b4f2325006262e34ec2dd3e47d19819cbb8c16e44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83f69981cd9562502f981ae86cb38395014c0e19c2fcd0955ecc26a95efb0e3e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant6541a578d78e1fdc552daa2b4f2325006262e34ec2dd3e47d19819cbb8c16e44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baf3dba5-ae79-9b53-0dd1-6e809970ff79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–52.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant6541a578d78e1fdc552daa2b4f2325006262e34ec2dd3e47d19819cbb8c16e44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/021c219667d2eeaeeedc4a5cf7fc02af94b4ea408335b50f7e9a6913c5752475SourceCutoffVari/Variant6541a578d78e1fdc552daa2b4f2325006262e34ec2dd3e47d19819cbb8c16e44.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0736e6de3e050772e5803ed42ef89c961d25d928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
