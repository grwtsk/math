# moebius_sum_two_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca18be76-c552-d8c4-43a5-0593b6e34057",
  "kind": "theorem",
  "lexical_name": "moebius_sum_two_split",
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
  "slug": "moebius-sum-two-split--42192a0c3a9e5fa7dee89dae",
  "source": {
    "blob": "bf2e33e73816d6c7d3ee1060c0d91043b5f23660",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 167,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42192a0c3a9e5fa7dee89dae1577aedac3c138273fa87434be467844afaed67a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca18be76-c552-d8c4-43a5-0593b6e34057`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem moebius_sum_two_split (N : ℕ) (F : ℕ → ℝ) :
    (∑ d ∈ Icc 1 N, (ArithmeticFunction.moebius d : ℝ) * F d) =
      (∑ d ∈ (Icc 1 N).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F d) -
      ∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F (2 * d) := by
  have hs := sum_filter_add_sum_filter_not (Icc 1 N) (fun d ↦ Nat.Coprime d 2)
    (fun d ↦ (ArithmeticFunction.moebius d : ℝ) * F d)
  rw [even_sum_reindex] at hs
  have he : (∑ d ∈ Icc 1 (N / 2), (ArithmeticFunction.moebius (2 * d) : ℝ) * F (2 * d)) =
      -(∑ d ∈ (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) * F (2 * d)) := by
    rw [sum_filter, ← sum_neg_distrib]
    apply sum_congr rfl
    intro d _
    rw [moebius_two_mul]
    split_ifs <;> ring
  rw [he] at hs
  exact hs.symm.trans (by ring)

/-- Specialization keeps the actual strict-cutoff source sampling kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TwoInsertionBoundaryAudit/Variant9e08ae82e7475a83495c645a25072e27384b43b4e2fe16f8937cbbb7b7f575ba.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf2e33e73816d6c7d3ee1060c0d91043b5f23660` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
