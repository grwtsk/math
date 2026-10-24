# GenLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f984cc58c6cf7c7bef643bfa88a5af8cc5d94b093ac7e8a41043ee7180745142",
  "kind": "def",
  "lexical_name": "GenLoop",
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
  "slug": "genloop--dcf8cafbba8fe1b85ee50a2a",
  "source": {
    "blob": "d4486de2bc267c81b7ddb3df318e39c428d07058",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 111,
    "path": "GRWTSK/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcf8cafbba8fe1b85ee50a2a95ba896f515ba1e0945a411a29d9583ce1afb5dc",
  "verification": {
    "reference": "docs/verification/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f984cc58c6cf7c7bef643bfa88a5af8cc5d94b093ac7e8a41043ee7180745142`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GenLoop : Set C(I^N, X) :=
  {p | ∀ y ∈ Cube.boundary N, p y = x}
#align gen_loop GenLoop

scoped[Topology.Homotopy] notation "Ω^" => GenLoop

open Topology.Homotopy

variable {N X x}

namespace GenLoop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/HomotopyGroup/Variantb487d00878afee1ad6fadfaad3efe49ccb6a151c4a984145ebc2cb6f6668a2f6.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4486de2bc267c81b7ddb3df318e39c428d07058` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
