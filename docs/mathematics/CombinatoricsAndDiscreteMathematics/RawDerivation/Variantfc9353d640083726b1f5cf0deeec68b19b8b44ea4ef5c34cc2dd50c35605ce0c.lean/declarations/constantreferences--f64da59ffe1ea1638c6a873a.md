# constantReferences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44c769dedabf652c9de5eead5e2a7587504310c2c7172e944e654f749431b3d1",
  "kind": "def",
  "lexical_name": "constantReferences",
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
  "slug": "constantreferences--f64da59ffe1ea1638c6a873a",
  "source": {
    "blob": "2c9e4af7b47f152a2e9d88dc4af91e4e66bd6c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f64da59ffe1ea1638c6a873ab46bdb53ed2a9b44e4544a12f6852cfdc24205b4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44c769dedabf652c9de5eead5e2a7587504310c2c7172e944e654f749431b3d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def constantReferences {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.ConstantName
    | .node rule children =>
        letI := K.constantNameDecidableEq
        K.ruleConstantReferences rule ∪ constantReferencesAll children

  /--
  **Architectural problem:** Reference accounting must traverse heterogeneous children.
  **Important data and indices:** `js` fixes the child judgments and `K` the name type.
  **Type-enforced invariant:** Every indexed child contributes exactly its references.
  **Layer boundary:** This auxiliary union is not declaration-linking closure.
  **Worked example:** An empty premise list contributes no constants.
  **Used by:** `constantReferences` and its structural preservation proof.
  **Proof idea:** Union the head set with the recursive tail set.
  **Equality notion:** Results are `Finset` values under `K`'s decidable equality.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** Reference aggregation covers the complete child list.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9e4af7b47f152a2e9d88dc4af91e4e66bd6c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
