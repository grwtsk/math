# measurableEquiv_range_coe_nat_of_infinite_of_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4fb2955-c9e4-7c1e-e713-9d4cf6bb6ddd",
  "kind": "theorem",
  "lexical_name": "measurableEquiv_range_coe_nat_of_infinite_of_countable",
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
  "slug": "measurableequiv-range-coe-nat-of-infinite-of-countable--238b623f86c53c92952c5bb9",
  "source": {
    "blob": "b8000aad9a663d4d69cda25a6b13ebc0a9248673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 36,
    "path": "GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variante476263386905c6342cd33ca3b91a43cc2be52f5c43e084d764907c5da8e5c0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:238b623f86c53c92952c5bb952ad0b2dd8ac8fa39cadbf87d5d5fbd36fe8a17c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EmbeddingReal/Variante476263386905c6342cd33ca3b91a43cc2be52f5c43e084d764907c5da8e5c0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4fb2955-c9e4-7c1e-e713-9d4cf6bb6ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableEquiv_range_coe_nat_of_infinite_of_countable [Infinite α] [Countable α] :
    Nonempty (α ≃ᵐ range ((↑) : ℕ → ℝ)) := by
  have : PolishSpace (range ((↑) : ℕ → ℝ)) :=
    Nat.isClosedEmbedding_coe_real.isClosedMap.isClosed_range.polishSpace
  refine ⟨PolishSpace.Equiv.measurableEquiv ?_⟩
  refine (nonempty_equiv_of_countable.some : α ≃ ℕ).trans ?_
  exact Equiv.ofInjective ((↑) : ℕ → ℝ) Nat.cast_injective

/-- Any standard Borel space is measurably equivalent to a subset of the reals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EmbeddingReal/Variante476263386905c6342cd33ca3b91a43cc2be52f5c43e084d764907c5da8e5c0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EmbeddingReal/Variante476263386905c6342cd33ca3b91a43cc2be52f5c43e084d764907c5da8e5c0d.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8000aad9a663d4d69cda25a6b13ebc0a9248673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
