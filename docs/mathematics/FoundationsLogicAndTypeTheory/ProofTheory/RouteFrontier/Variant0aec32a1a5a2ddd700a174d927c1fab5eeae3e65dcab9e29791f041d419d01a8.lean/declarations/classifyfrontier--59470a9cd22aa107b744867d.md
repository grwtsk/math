# classifyFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37ed3a9470ea1d1813e253e5ea85020102fd7c2dab5951e6cffcbb9cef3a469d",
  "kind": "def",
  "lexical_name": "classifyFrontier",
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
  "slug": "classifyfrontier--59470a9cd22aa107b744867d",
  "source": {
    "blob": "c532b6523df8f88ceef0fd9f28b25d4b956a945e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59470a9cd22aa107b744867d52f8a38b0c4eb3b8a232b8d2446cbbe5f5d41867",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37ed3a9470ea1d1813e253e5ea85020102fd7c2dab5951e6cffcbb9cef3a469d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def classifyFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (family : FrontierFamily Obligation) :
    RemainderShape Obligation :=
  if family = frontierZero Obligation then
    .noRoute
  else if (∅ : Requirement Obligation) ∈ family then
    .complete
  else
    .open family

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c532b6523df8f88ceef0fd9f28b25d4b956a945e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
