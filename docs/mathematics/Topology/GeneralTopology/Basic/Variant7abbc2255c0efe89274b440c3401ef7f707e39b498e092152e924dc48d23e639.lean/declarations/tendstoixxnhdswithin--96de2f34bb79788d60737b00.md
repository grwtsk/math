# tendstoIxxNhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fda7bc2b92135b2f0e2a2db791aa536cb52338d0bff36e7cf2ad302f3a3e27e3",
  "kind": "instance",
  "lexical_name": "tendstoIxxNhdsWithin",
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
  "slug": "tendstoixxnhdswithin--96de2f34bb79788d60737b00",
  "source": {
    "blob": "55a7510276f30c2bbe70b43993143d137ed0ed25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 165,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96de2f34bb79788d60737b000a0afd0d393e9da224a767299009abfe5fb7f811",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fda7bc2b92135b2f0e2a2db791aa536cb52338d0bff36e7cf2ad302f3a3e27e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendstoIxxNhdsWithin {α : Type*} [TopologicalSpace α] (a : α) {s t : Set α}
    {Ixx} [TendstoIxxClass Ixx (𝓝 a) (𝓝 a)] [TendstoIxxClass Ixx (𝓟 s) (𝓟 t)] :
    TendstoIxxClass Ixx (𝓝[s] a) (𝓝[t] a) :=
  Filter.tendstoIxxClass_inf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7abbc2255c0efe89274b440c3401ef7f707e39b498e092152e924dc48d23e639.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55a7510276f30c2bbe70b43993143d137ed0ed25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
