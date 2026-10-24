# sq_add_sq_of_nonempty_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c39c11c6-c577-71c9-d721-a82727332872",
  "kind": "theorem",
  "lexical_name": "sq_add_sq_of_nonempty_fixedPoints",
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
  "slug": "sq-add-sq-of-nonempty-fixedpoints--125e9ef8accee429c9771ab7",
  "source": {
    "blob": "3392b6cc3b225e1177db085a997035c8bf23e5da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:125e9ef8accee429c9771ab7ae65bb455d1f1fb15e4385d644be89454c592008",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39c11c6-c577-71c9-d721-a82727332872`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_add_sq_of_nonempty_fixedPoints (hn : (fixedPoints (obvInvo k)).Nonempty) :
    ∃ a b : ℕ, a ^ 2 + b ^ 2 = 4 * k + 1 := by
  simp only [sq]
  obtain ⟨⟨⟨x, y, z⟩, he⟩, hf⟩ := hn
  have := mem_fixedPoints_iff.mp hf
  simp only [obvInvo, Subtype.mk.injEq, Prod.mk.injEq, true_and] at this
  simp only [zagierSet, Set.mem_setOf_eq] at he
  use x, (2 * y)
  rw [show 2 * y * (2 * y) = 4 * y * y by linarith, ← he, this.1]

/-- The complicated involution, defined piecewise according to how `x` compares with
`y - z` and `2 * y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant827f18af0ca5123b67d47067df4e5aabcae4a666c7474870d092c3307c7ac8bf.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3392b6cc3b225e1177db085a997035c8bf23e5da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
