# matches'_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "243b243d255bdc1b51b317c1b1b896aeb805509b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae1cea8e-37ae-1eff-b51c-d230a8a5f97b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e3218fe-875a-bb75-4e5d-324a94295659",
  "kind": "theorem",
  "lexical_name": "matches'_map",
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
  "slug": "matches-map--5d8b5dc26d5469050af8649e",
  "source": {
    "blob": "243b243d255bdc1b51b317c1b1b896aeb805509b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 441,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d8b5dc26d5469050af8649ebbbb3ad9df7408a937ed7c971a60011bb7454b40",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e3218fe-875a-bb75-4e5d-324a94295659`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matches'_map (f : α → β) :
    ∀ P : RegularExpression α, (P.map f).matches' = Language.map f P.matches'
  | 0 => (map_zero _).symm
  | 1 => (map_one _).symm
  | char a => by
    rw [eq_comm]
    exact image_singleton
  -- porting note: the following close with last `rw` but not with `simp`?
  | R + S => by simp only [matches'_map, map, matches'_add]; rw [map_add]
  | R * S => by simp only [matches'_map, map, matches'_mul]; rw [map_mul]
  | star R => by
    simp_rw [map, matches', matches'_map]
    rw [Language.kstar_eq_iSup_pow, Language.kstar_eq_iSup_pow]
    simp_rw [← map_pow]
    exact image_iUnion.symm
#align regular_expression.matches_map RegularExpression.matches'_map

end RegularExpression
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RegularExpressions/Variantc92c333a3b6c6b4fe952dbf1302cd6b4ded47d2e67577a657df483a423fe6e86.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `243b243d255bdc1b51b317c1b1b896aeb805509b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
