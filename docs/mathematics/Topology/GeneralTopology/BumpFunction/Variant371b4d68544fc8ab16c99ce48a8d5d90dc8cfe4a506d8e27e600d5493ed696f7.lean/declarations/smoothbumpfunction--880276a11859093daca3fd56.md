# SmoothBumpFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ae709736dc054ad71aa72070fa6b86cc2781fdb2ce91b6d2ba109077991fb05",
  "kind": "structure",
  "lexical_name": "SmoothBumpFunction",
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
  "slug": "smoothbumpfunction--880276a11859093daca3fd56",
  "source": {
    "blob": "cbbccbe984aec68ded8909d9aad9485261207caf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:880276a11859093daca3fd563293c141b905f37d0fa971654b00bbe284b1a6bf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ae709736dc054ad71aa72070fa6b86cc2781fdb2ce91b6d2ba109077991fb05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SmoothBumpFunction (c : M) extends ContDiffBump (extChartAt I c c) where
  closedBall_subset : closedBall (extChartAt I c c) rOut ∩ range I ⊆ (extChartAt I c).target
#align smooth_bump_function SmoothBumpFunction

namespace SmoothBumpFunction

variable {c : M} (f : SmoothBumpFunction I c) {x : M} {I}

/-- The function defined by `f : SmoothBumpFunction c`. Use automatic coercion to function
instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/BumpFunction/Variant371b4d68544fc8ab16c99ce48a8d5d90dc8cfe4a506d8e27e600d5493ed696f7.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbccbe984aec68ded8909d9aad9485261207caf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
