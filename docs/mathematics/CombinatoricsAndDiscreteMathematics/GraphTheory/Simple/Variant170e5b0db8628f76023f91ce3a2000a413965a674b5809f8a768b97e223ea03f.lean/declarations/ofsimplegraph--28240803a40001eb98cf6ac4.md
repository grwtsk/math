# ofSimpleGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8bce0f16425d82288335528a5d086d5ead6c0e102667d6f70b3d8ebc5873c97",
  "kind": "def",
  "lexical_name": "ofSimpleGraph",
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
  "slug": "ofsimplegraph--28240803a40001eb98cf6ac4",
  "source": {
    "blob": "a1698b1fb264072a660b4e20df3cc01f025af6ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant170e5b0db8628f76023f91ce3a2000a413965a674b5809f8a768b97e223ea03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28240803a40001eb98cf6ac45ce2bde0713fd0d1876826b7fdc3ac58ffc923f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant170e5b0db8628f76023f91ce3a2000a413965a674b5809f8a768b97e223ea03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8bce0f16425d82288335528a5d086d5ead6c0e102667d6f70b3d8ebc5873c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSimpleGraph (G : SimpleGraph α) : Graph α (Sym2 α) where
  vertexSet := Set.univ
  edgeSet := G.edgeSet
  IsLink e x y := e = s(x, y) ∧ e ∈ G.edgeSet
  isLink_symm e he := ⟨fun u v ↦ by simp [Sym2.eq_swap]⟩
  eq_or_eq_of_isLink_of_isLink e u v x y he hf := by grind
  edge_mem_iff_exists_isLink e := by induction e with | h u v => grind

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant170e5b0db8628f76023f91ce3a2000a413965a674b5809f8a768b97e223ea03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Simple/Variant170e5b0db8628f76023f91ce3a2000a413965a674b5809f8a768b97e223ea03f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1698b1fb264072a660b4e20df3cc01f025af6ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
