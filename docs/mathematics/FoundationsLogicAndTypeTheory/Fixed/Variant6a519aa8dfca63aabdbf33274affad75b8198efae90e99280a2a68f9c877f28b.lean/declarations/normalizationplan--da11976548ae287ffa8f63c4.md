# NormalizationPlan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8f14ac1542272c7b3771b9f58600c8b2b7542d9e272effde6dd87f234755039",
  "kind": "structure",
  "lexical_name": "NormalizationPlan",
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
  "slug": "normalizationplan--da11976548ae287ffa8f63c4",
  "source": {
    "blob": "80906f34b81ce137f1e5e2b3e8723483c3b84f2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 356,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da11976548ae287ffa8f63c43c3e8bf1b63400da54d263ca0771db72f3359fd4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8f14ac1542272c7b3771b9f58600c8b2b7542d9e272effde6dd87f234755039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NormalizationPlan where
  floorX : Int
  floorY : Int
  floorZ : Int
  remainderX : Int
  remainderY : Int
  remainderZ : Int
  residual : Int
  ranked : AxisRemainder × AxisRemainder × AxisRemainder
deriving DecidableEq, Repr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Fixed/Variant6a519aa8dfca63aabdbf33274affad75b8198efae90e99280a2a68f9c877f28b.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80906f34b81ce137f1e5e2b3e8723483c3b84f2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
