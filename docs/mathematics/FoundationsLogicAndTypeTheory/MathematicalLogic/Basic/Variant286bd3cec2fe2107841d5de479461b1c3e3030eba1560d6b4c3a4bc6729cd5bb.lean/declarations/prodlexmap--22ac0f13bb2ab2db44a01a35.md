# prodLexMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92f0a214338ecdb21b51604f4f1061a2d5174a5af1343eab68e9879768b9a60a",
  "kind": "def",
  "lexical_name": "prodLexMap",
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
  "slug": "prodlexmap--22ac0f13bb2ab2db44a01a35",
  "source": {
    "blob": "fb40f73a614171fb03f32ee7f47b2abbe02c63c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 618,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22ac0f13bb2ab2db44a01a357b945b80fad54fcc545be73ef02cfa2e6f19d23e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92f0a214338ecdb21b51604f4f1061a2d5174a5af1343eab68e9879768b9a60a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodLexMap (f : r ↪r s) (g : t ↪r u) : Prod.Lex r t ↪r Prod.Lex s u where
  toFun := Prod.map f g
  inj' := f.injective.Prod_map g.injective
  map_rel_iff' := by simp [Prod.lex_def, f.map_rel_iff, g.map_rel_iff, f.inj]
#align rel_embedding.prod_lex_map RelEmbedding.prodLexMap
#align rel_embedding.prod_lex_map_apply RelEmbedding.prodLexMap_apply

end RelEmbedding

/-- A relation isomorphism is an equivalence that is also a relation embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant286bd3cec2fe2107841d5de479461b1c3e3030eba1560d6b4c3a4bc6729cd5bb.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb40f73a614171fb03f32ee7f47b2abbe02c63c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
