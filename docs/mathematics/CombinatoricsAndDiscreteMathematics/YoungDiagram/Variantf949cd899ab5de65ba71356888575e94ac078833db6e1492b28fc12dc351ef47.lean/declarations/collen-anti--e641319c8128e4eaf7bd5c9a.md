# colLen_anti

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58eb535a-bcc1-1e70-f9a7-adf22782a2b9",
  "kind": "theorem",
  "lexical_name": "colLen_anti",
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
  "slug": "collen-anti--e641319c8128e4eaf7bd5c9a",
  "source": {
    "blob": "77cf6f53d0ce9b7e885615acb65380ef8f0acbc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 357,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantf949cd899ab5de65ba71356888575e94ac078833db6e1492b28fc12dc351ef47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e641319c8128e4eaf7bd5c9ac3e48116164b603dd64c4a8dd3ec2ca8422c471c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantf949cd899ab5de65ba71356888575e94ac078833db6e1492b28fc12dc351ef47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58eb535a-bcc1-1e70-f9a7-adf22782a2b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colLen_anti (μ : YoungDiagram) (j1 j2 : ℕ) (hj : j1 ≤ j2) : μ.colLen j2 ≤ μ.colLen j1 := by
  convert μ.transpose.rowLen_anti j1 j2 hj using 1 <;> simp

end Columns

section RowLens

/-! ### The list of row lengths of a Young diagram

This section defines `μ.rowLens : List ℕ`, the list of row lengths of a Young diagram `μ`.
  1. `YoungDiagram.rowLens_sorted` : It is weakly decreasing (`List.Sorted (· ≥ ·)`).
  2. `YoungDiagram.rowLens_pos` : It is strictly positive.

-/


/-- List of row lengths of a Young diagram -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantf949cd899ab5de65ba71356888575e94ac078833db6e1492b28fc12dc351ef47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/YoungDiagram/Variantf949cd899ab5de65ba71356888575e94ac078833db6e1492b28fc12dc351ef47.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77cf6f53d0ce9b7e885615acb65380ef8f0acbc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
