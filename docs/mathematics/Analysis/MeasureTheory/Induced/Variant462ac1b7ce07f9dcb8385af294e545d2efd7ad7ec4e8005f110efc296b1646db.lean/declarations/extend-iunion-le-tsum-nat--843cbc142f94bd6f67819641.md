# extend_iUnion_le_tsum_nat'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df6aa9bb-7c71-d694-e344-40e2c9d6fecd",
  "kind": "theorem",
  "lexical_name": "extend_iUnion_le_tsum_nat'",
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
  "slug": "extend-iunion-le-tsum-nat--843cbc142f94bd6f67819641",
  "source": {
    "blob": "be20989f237f5b9a8e8ffc50fcc724de1f965902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 119,
    "path": "GRWTSK/Analysis/MeasureTheory/Induced/Variant462ac1b7ce07f9dcb8385af294e545d2efd7ad7ec4e8005f110efc296b1646db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:843cbc142f94bd6f67819641ed97d8c1564a91fb3300f9d1f6e88ff1b1557df6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Induced/Variant462ac1b7ce07f9dcb8385af294e545d2efd7ad7ec4e8005f110efc296b1646db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df6aa9bb-7c71-d694-e344-40e2c9d6fecd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_iUnion_le_tsum_nat' (s : ℕ → Set α) :
    extend m (⋃ i, s i) ≤ ∑' i, extend m (s i) := by
  by_cases! h : ∀ i, P (s i)
  · rw [extend_eq _ (PU h), congr_arg tsum _]
    · apply msU h
    funext i
    apply extend_eq _ (h i)
  · obtain ⟨i, hi⟩ := h
    grw [← ENNReal.le_tsum i, extend_eq_top _ hi]
    exact le_top

end Subadditive

section Mono

include m_mono in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Induced/Variant462ac1b7ce07f9dcb8385af294e545d2efd7ad7ec4e8005f110efc296b1646db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Induced/Variant462ac1b7ce07f9dcb8385af294e545d2efd7ad7ec4e8005f110efc296b1646db.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be20989f237f5b9a8e8ffc50fcc724de1f965902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
