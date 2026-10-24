# map_induce_induceHomOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df6b434b-43ac-b360-214a-db1292f21727",
  "kind": "lemma",
  "lexical_name": "map_induce_induceHomOfLE",
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
  "slug": "map-induce-inducehomofle--8a14bd0377ae2b5a0b3ee5d2",
  "source": {
    "blob": "694306045d11b3a2c7a6603d0e0dae6569482e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 255,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a14bd0377ae2b5a0b3ee5d25f74c551207600dfe039cce8cbc2ec21fcf622b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df6b434b-43ac-b360-214a-db1292f21727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_induce_induceHomOfLE (hs : s ⊆ s') {u v : V} : ∀ (w : G.Walk u v) (hw),
    (w.induce s hw).map (G.induceHomOfLE hs).toHom = w.induce s' (subset_trans hw hs)
  | .nil, hw => rfl
  | .cons (v := u') huu' w, hw => by simp [map_induce_induceHomOfLE]

/-! ## Deleting edges -/

/-- Given a walk that avoids a set of edges, produce a walk in the graph
with those edges deleted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `694306045d11b3a2c7a6603d0e0dae6569482e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
