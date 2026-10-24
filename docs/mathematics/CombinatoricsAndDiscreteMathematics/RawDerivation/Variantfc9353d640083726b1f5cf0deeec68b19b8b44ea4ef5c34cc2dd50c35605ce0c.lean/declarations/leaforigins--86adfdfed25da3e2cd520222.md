# leafOrigins

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85eca946b86c5e24d3f6876c2dfd5dd512ba76d6e44fb4455e0e2cb6535e9bc3",
  "kind": "def",
  "lexical_name": "leafOrigins",
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
  "slug": "leaforigins--86adfdfed25da3e2cd520222",
  "source": {
    "blob": "2c9e4af7b47f152a2e9d88dc4af91e4e66bd6c37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 266,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86adfdfed25da3e2cd520222545257a29106ed9e58ca2f85e5d541cef3b15c52",
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

Occurrence: `declaration:85eca946b86c5e24d3f6876c2dfd5dd512ba76d6e44fb4455e0e2cb6535e9bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def leafOrigins {K : KernelPresentation.{u}} {J : K.Judgment} :
      RawDer K J → Finset K.LeafOrigin
    | .node rule children =>
        letI := K.leafOriginDecidableEq
        K.ruleLeafOrigins rule ∪ leafOriginsAll children

  /--
  **Architectural problem:** Provenance aggregation must traverse all premises.
  **Important data and indices:** `js` fixes each child's scoped judgment.
  **Type-enforced invariant:** The fold accepts only the indexed child sequence.
  **Layer boundary:** This auxiliary union does not validate provenance sources.
  **Worked example:** An empty child list contributes no origins.
  **Used by:** `leafOrigins` and its compilation-preservation proof.
  **Proof idea:** Union head and recursively accumulated tail origins.
  **Equality notion:** Results are exact finite sets.
  **Boundary cases:** `.nil` returns `∅`.
  **Validation consequence:** Every child origin remains represented.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/RawDerivation/Variantfc9353d640083726b1f5cf0deeec68b19b8b44ea4ef5c34cc2dd50c35605ce0c.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c9e4af7b47f152a2e9d88dc4af91e4e66bd6c37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
