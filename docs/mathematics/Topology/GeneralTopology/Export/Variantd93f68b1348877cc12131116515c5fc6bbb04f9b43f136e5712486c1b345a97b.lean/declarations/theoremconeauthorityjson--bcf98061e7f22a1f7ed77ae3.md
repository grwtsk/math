# theoremConeAuthorityJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9aedaa80b0ce71a70764df180b4593d95a78865fdc4f749476abc3dee81c22fb",
  "kind": "def",
  "lexical_name": "theoremConeAuthorityJson",
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
  "slug": "theoremconeauthorityjson--bcf98061e7f22a1f7ed77ae3",
  "source": {
    "blob": "445735cc7fe93e279ac0e830eaaba311dfff0e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 431,
    "path": "GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcf98061e7f22a1f7ed77ae33b7f33f601c6d9a499820af4aae6a6e1a089fe59",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9aedaa80b0ce71a70764df180b4593d95a78865fdc4f749476abc3dee81c22fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def theoremConeAuthorityJson (info : ConstantInfo) (deps : List String) : String :=
  let gateName? := currentMajorGateName? info.name.toString
  let gateAuthorityClass? := majorGateAuthorityClass? info.name.toString
  let reasons := forbiddenAuthorityReasons info deps
  "{\"isCurrentMajorGate\":" ++ jsonBool gateName?.isSome ++
  ",\"gateName\":" ++ jsonStringOrNull gateName? ++
  ",\"gateAuthorityClass\":" ++ jsonStringOrNull gateAuthorityClass? ++
  ",\"requiresCheckedProofStatus\":" ++ jsonBool (gateName?.isSome && info.isTheorem) ++
  ",\"forbiddenAuthority\":" ++ jsonBool (gateName?.isSome && !reasons.isEmpty) ++
  ",\"forbiddenAuthorityReasons\":" ++ jsonStringArray reasons ++ "}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Export/Variantd93f68b1348877cc12131116515c5fc6bbb04f9b43f136e5712486c1b345a97b.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `445735cc7fe93e279ac0e830eaaba311dfff0e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
