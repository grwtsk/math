# sum_range_id_mul_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:456af54e-a28c-8cb3-fd4a-82affbf68189",
  "kind": "theorem",
  "lexical_name": "sum_range_id_mul_two",
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
  "slug": "sum-range-id-mul-two--0b43a492d2e99087bcc7497c",
  "source": {
    "blob": "62878db1ac9ce1c1f3b2d0bf50c70b7331f68b03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b43a492d2e99087bcc7497c39dc34d64694f54c50a1f5f8c12e41c1ad6f78e0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:456af54e-a28c-8cb3-fd4a-82affbf68189`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_range_id_mul_two (n : ℕ) : (∑ i in range n, i) * 2 = n * (n - 1) :=
  calc
    (∑ i in range n, i) * 2 = (∑ i in range n, i) + ∑ i in range n, (n - 1 - i) :=
    by rw [sum_range_reflect (fun i => i) n, mul_two]
    _ = ∑ i in range n, (i + (n - 1 - i)) := sum_add_distrib.symm
    _ = ∑ i in range n, (n - 1) :=
      sum_congr rfl fun i hi => add_tsub_cancel_of_le <| Nat.le_pred_of_lt <| mem_range.1 hi
    _ = n * (n - 1) := by rw [sum_const, card_range, Nat.nsmul_eq_mul]
#align finset.sum_range_id_mul_two Finset.sum_range_id_mul_two

/-- Gauss' summation formula -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variantbe9067b6e86d67fc661b2bd16f150c42acec9456ce78292760fb186f8f667598.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62878db1ac9ce1c1f3b2d0bf50c70b7331f68b03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
