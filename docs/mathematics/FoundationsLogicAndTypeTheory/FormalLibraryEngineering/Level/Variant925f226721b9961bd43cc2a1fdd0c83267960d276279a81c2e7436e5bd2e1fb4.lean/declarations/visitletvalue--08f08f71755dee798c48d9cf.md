# visitLetValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1245f399333dddc056908a52fcfafb1f08ccc247fc12bea9ea5972ca31fc1068",
  "kind": "def",
  "lexical_name": "visitLetValue",
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
  "slug": "visitletvalue--08f08f71755dee798c48d9cf",
  "source": {
    "blob": "574be8a54a716ea49b8b1e7c55248bf8d73be861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant925f226721b9961bd43cc2a1fdd0c83267960d276279a81c2e7436e5bd2e1fb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08f08f71755dee798c48d9cffab320c4d49597b67384f597156194abd165596a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant925f226721b9961bd43cc2a1fdd0c83267960d276279a81c2e7436e5bd2e1fb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1245f399333dddc056908a52fcfafb1f08ccc247fc12bea9ea5972ca31fc1068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visitLetValue (e : LetValue .pure) : Visitor :=
  match e with
  | .erased | .lit .. | .proj .. => id
  | .const _ us args _ => visitLevels us ∘ visitArgs args
  | .fvar _ args => visitArgs args

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant925f226721b9961bd43cc2a1fdd0c83267960d276279a81c2e7436e5bd2e1fb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant925f226721b9961bd43cc2a1fdd0c83267960d276279a81c2e7436e5bd2e1fb4.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `574be8a54a716ea49b8b1e7c55248bf8d73be861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
