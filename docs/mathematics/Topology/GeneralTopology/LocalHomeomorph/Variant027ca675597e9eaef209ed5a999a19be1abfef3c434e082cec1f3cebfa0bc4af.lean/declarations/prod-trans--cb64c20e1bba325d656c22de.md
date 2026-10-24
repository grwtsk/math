# prod_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbaad779-1565-1534-3e21-28b9e58083dd",
  "kind": "theorem",
  "lexical_name": "prod_trans",
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
  "slug": "prod-trans--cb64c20e1bba325d656c22de",
  "source": {
    "blob": "4268fa7d860daa2aa74904910f3337891c3a4b4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1053,
    "line": 1048,
    "path": "GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb64c20e1bba325d656c22de6277ca048bcd14abe798927a10d96f03f0a2e49e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbaad779-1565-1534-3e21-28b9e58083dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1048–1053.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_trans {η : Type*} {ε : Type*} [TopologicalSpace η] [TopologicalSpace ε]
    (e : LocalHomeomorph α β) (f : LocalHomeomorph β γ) (e' : LocalHomeomorph δ η)
    (f' : LocalHomeomorph η ε) : (e.prod e').trans (f.prod f') = (e.trans f).prod (e'.trans f') :=
  toLocalEquiv_injective <| e.1.prod_trans ..
#align local_homeomorph.prod_trans LocalHomeomorph.prod_trans

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalHomeomorph/Variant027ca675597e9eaef209ed5a999a19be1abfef3c434e082cec1f3cebfa0bc4af.lean#L1048).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4268fa7d860daa2aa74904910f3337891c3a4b4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
