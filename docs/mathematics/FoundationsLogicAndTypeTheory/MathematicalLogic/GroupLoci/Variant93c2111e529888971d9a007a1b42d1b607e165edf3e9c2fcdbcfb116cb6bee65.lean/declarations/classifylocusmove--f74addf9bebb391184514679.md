# classifyLocusMove

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d6d5d93a679ef58628ce5745a5d64dde4217337d37f6af78cd2fb7f0846b25b4",
  "kind": "def",
  "lexical_name": "classifyLocusMove",
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
  "slug": "classifylocusmove--f74addf9bebb391184514679",
  "source": {
    "blob": "b46ebc9bbdadd68cb9a01557e6b91ecb9914108f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f74addf9bebb39118451467934bc7b15fce27cb56d08029705e4eb8ecdcf9756",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d6d5d93a679ef58628ce5745a5d64dde4217337d37f6af78cd2fb7f0846b25b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classifyLocusMove : LocusMoveKind → LocusMoveClass
  | .identity => .invertible
  | .braid => .invertible
  | .commute => .invertible
  | .conjugate => .invertible
  | .stabilize => .invertible
  | .destabilize => .invertible
  | .quotient => .reducing
  | .lower => .reducing
  | .lift => .reducing
  | .replay => .reducing
  | .canonicalize => .reducing
  | .normalize => .reducing
  | .macroPlaceholder => .residue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GroupLoci/Variant93c2111e529888971d9a007a1b42d1b607e165edf3e9c2fcdbcfb116cb6bee65.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b46ebc9bbdadd68cb9a01557e6b91ecb9914108f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
