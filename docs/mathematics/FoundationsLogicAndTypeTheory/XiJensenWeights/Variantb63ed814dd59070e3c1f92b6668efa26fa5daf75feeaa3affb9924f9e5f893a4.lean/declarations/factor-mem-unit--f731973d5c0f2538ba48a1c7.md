# factor_mem_unit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19338908-918c-fa7a-5b21-553a0e7b0450",
  "kind": "theorem",
  "lexical_name": "factor_mem_unit",
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
  "slug": "factor-mem-unit--f731973d5c0f2538ba48a1c7",
  "source": {
    "blob": "e6d403d17552f8b3ba407eeda2401eac40bd2b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f731973d5c0f2538ba48a1c7d2b8feb2cf7d6d42a19d6850b8e6ec75ee7f7f30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19338908-918c-fa7a-5b21-553a0e7b0450`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem factor_mem_unit {n k j : ℕ} (hn : 1 ≤ n) (hk : k ≤ n)
    (hj : j ∈ range (2 * k)) :
    0 ≤ 1 - (j : ℝ) / (2 * (n : ℝ)) ∧
      1 - (j : ℝ) / (2 * (n : ℝ)) ≤ 1 := by
  have hn0 : 0 < 2 * (n : ℝ) := by positivity
  have hjn : (j : ℝ) ≤ 2 * (n : ℝ) := by exact_mod_cast (show j ≤ 2 * n by
    have := Finset.mem_range.mp hj
    omega)
  constructor
  · exact sub_nonneg.mpr ((div_le_one hn0).mpr hjn)
  · exact sub_le_self _ (div_nonneg (Nat.cast_nonneg _) hn0.le)

/-- The weighting never amplifies a source coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/XiJensenWeights/Variantb63ed814dd59070e3c1f92b6668efa26fa5daf75feeaa3affb9924f9e5f893a4.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d403d17552f8b3ba407eeda2401eac40bd2b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
