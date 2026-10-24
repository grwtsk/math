# mem_subVectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f2be3c1-87b8-dcaa-750e-aea6ad1f0678",
  "kind": "theorem",
  "lexical_name": "mem_subVectors",
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
  "slug": "mem-subvectors--5adea1bcd8cd0a56693109ba",
  "source": {
    "blob": "0c8a79a90491a513f6abc7dac3cc067dfc5e7a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 206,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5adea1bcd8cd0a56693109babbdc6ebf6bace004d260df8f4623a19ed652df2d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f2be3c1-87b8-dcaa-750e-aea6ad1f0678`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_subVectors {ra rb : List ℝ} {ia ib : IntervalVector}
    (halen : ra.length = ia.length)
    (hblen : rb.length = ib.length)
    (ha : ∀ i (hi : i < ia.length), ra[i]'(halen ▸ hi) ∈ ia[i]'hi)
    (hb : ∀ i (hi : i < ib.length), rb[i]'(hblen ▸ hi) ∈ ib[i]'hi) :
    ∀ i (hi : i < (subVectors ia ib).length),
      (ra[i]'(by simp [subVectors_length] at hi; rw [halen]; omega) -
       rb[i]'(by simp [subVectors_length] at hi; rw [hblen]; omega)) ∈
      (subVectors ia ib)[i]'hi := by
  intro i hi
  simp only [subVectors_length] at hi
  have hi_ia : i < ia.length := Nat.lt_of_lt_of_le hi (Nat.min_le_left _ _)
  have hi_ib : i < ib.length := Nat.lt_of_lt_of_le hi (Nat.min_le_right _ _)
  simp only [subVectors, List.getElem_zipWith]
  exact IntervalDyadic.mem_sub (ha i hi_ia) (hb i hi_ib)

/-! ### The Equivalence Checker -/

/-- Check if an interval is contained within [-eps, eps] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Distillation/Variant539c0802979785205c4392b598acc5b7902ba0362d3c6ff1c8dae4d360152f67.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c8a79a90491a513f6abc7dac3cc067dfc5e7a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
