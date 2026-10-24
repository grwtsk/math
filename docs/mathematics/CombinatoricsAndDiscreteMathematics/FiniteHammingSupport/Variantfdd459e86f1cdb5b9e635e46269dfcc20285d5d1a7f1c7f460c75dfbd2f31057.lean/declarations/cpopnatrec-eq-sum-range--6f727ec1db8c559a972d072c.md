# cpopNatRec_eq_sum_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4bddaf3-006d-acae-8e06-ea69e07aa43b",
  "kind": "theorem",
  "lexical_name": "cpopNatRec_eq_sum_range",
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
  "slug": "cpopnatrec-eq-sum-range--6f727ec1db8c559a972d072c",
  "source": {
    "blob": "b9a09f2e95c99da5dbb0203df7028259e5294845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f727ec1db8c559a972d072cf3b6766850bfb4b3a58db6c490e5120c82f5d00e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4bddaf3-006d-acae-8e06-ea69e07aa43b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cpopNatRec_eq_sum_range
    {width count : Nat}
    (bits : BitVec width) :
    bits.cpopNatRec count 0 =
      ∑ index ∈ Finset.range count,
        (bits.getLsbD index).toNat := by
  induction count with
  | zero =>
      simp
  | succ count inductionHypothesis =>
      simp only [BitVec.cpopNatRec_succ]
      rw [BitVec.cpopNatRec_eq, inductionHypothesis]
      rw [Finset.sum_range_succ]
      simp only [Nat.zero_add]

/-- Population count is exactly finite-support cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9a09f2e95c99da5dbb0203df7028259e5294845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
