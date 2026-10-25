# rhetoricalSimilarity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be39d59fb1e4916e2506bda99aaeee5bcdbb633e8605733ef7dcc75558b716f9",
  "kind": "def",
  "lexical_name": "rhetoricalSimilarity",
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
  "slug": "rhetoricalsimilarity--830b244af8b5ce34785f978e",
  "source": {
    "blob": "18424572cbd914779d4f37a6552bb98c690e5e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 16,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variantb5c9f2118b39b2122af93de82b57df0fc83b11265562fbbc3c59ce6b54a51970.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:830b244af8b5ce34785f978eb567695e7d3a02e18ebe33c8931530f177b38a27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variantb5c9f2118b39b2122af93de82b57df0fc83b11265562fbbc3c59ce6b54a51970.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:be39d59fb1e4916e2506bda99aaeee5bcdbb633e8605733ef7dcc75558b716f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rhetoricalSimilarity
    (kernel : PositiveKernel RhetoricalIndex)
    (left right : Universe.ConceptId) : Option ℝ :=
  normalizedRealAffinity kernel
    (conceptVector kernel left) (conceptVector kernel right)

/-- Rhetorical similarity is symmetric. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variantb5c9f2118b39b2122af93de82b57df0fc83b11265562fbbc3c59ce6b54a51970.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Similarity/Variantb5c9f2118b39b2122af93de82b57df0fc83b11265562fbbc3c59ce6b54a51970.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18424572cbd914779d4f37a6552bb98c690e5e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
