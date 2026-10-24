# I₁'.ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93c185b4-6c0f-da24-05e6-183d321dd062",
  "kind": "lemma",
  "lexical_name": "I₁'.ext",
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
  "slug": "i-ext--bf96f6a232ddffd9ec253f82",
  "source": {
    "blob": "9419811fcbe4677837d8a77de604ff0dc4957447",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 512,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf96f6a232ddffd9ec253f82f94618ced68724012320c049402a34c4b25e906b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93c185b4-6c0f-da24-05e6-183d321dd062`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma I₁'.ext {a b : E.I₁'} (left : a.1.1 = b.1.1) (right : a.1.2 = b.1.2)
    (h : E.congrIndexOneOfEq left right a.2 = b.2) :
    a = b := by
  obtain ⟨⟨i, j⟩, k⟩ := a
  obtain ⟨⟨i', j'⟩, k'⟩ := b
  dsimp at left right
  subst left right
  simpa using h

/--
If `i = i'` and `j = j'` this is the isomorphism between the `1`-component at
`congrIndexOneOfEq k : E.I₁ i' j'` and the `1`-component at `k : E.I₁ i j`.

Note: This isomorphism could also be constructed inline from `eqToIso`. We only
use `eqToIso` directly to construct isomorphisms `E.Y k ≅ E.Y k'` where `k k' : E.I₁ i j`
and whenever `k : E.I₁ i j` and `k' : E.I₁ i' j'` have to be related we use `congrIndexOneOfEqIso`,
possibly combined with an additional `eqToIso` instead. The reason for this is
that the lemmas around `eqToHom_naturality` are hard to apply in the case where there is a
mismatch in the type of the index.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/One/Varianta846cfa4505ee54f411d16c015b68067af605a95e255e88d04a0a2aa42175c2f.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419811fcbe4677837d8a77de604ff0dc4957447` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
