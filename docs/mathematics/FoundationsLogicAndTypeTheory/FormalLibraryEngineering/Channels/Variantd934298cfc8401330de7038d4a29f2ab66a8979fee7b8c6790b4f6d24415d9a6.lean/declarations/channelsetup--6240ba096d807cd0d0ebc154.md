# ChannelSetup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2a07deffe5a73bf01645870caaa2c8e59295255bc124e0d7c8d667b8a24bb23",
  "kind": "structure",
  "lexical_name": "ChannelSetup",
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
  "slug": "channelsetup--6240ba096d807cd0d0ebc154",
  "source": {
    "blob": "2e08ade0998e8488cb1eaca1e8a88450ad374506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 299,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variantd934298cfc8401330de7038d4a29f2ab66a8979fee7b8c6790b4f6d24415d9a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6240ba096d807cd0d0ebc1545be6a438f0ef33253a8bd38aabb6347f596bb454",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variantd934298cfc8401330de7038d4a29f2ab66a8979fee7b8c6790b4f6d24415d9a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2a07deffe5a73bf01645870caaa2c8e59295255bc124e0d7c8d667b8a24bb23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ChannelSetup {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    (L : LogicSetup P Γ γ C) where
  /-- The source sort from which the channel setup starts. -/
  seed : S
  /-- The profile vertex of the setup domain. -/
  domain : Set S
  /-- The profile vertex of the setup codomain. -/
  codomain : Set S
  /-- The common base profile vertex for the initial and channel paths. -/
  base : Set S
  /-- The profile vertex reached by the raw channel. -/
  rawVertex : Set S
  /-- The profile vertex at which the data tail reads its output. -/
  tailVertex : Set S
  /-- The function profile vertex used by the raw-domain and tail-codomain product. -/
  funVertex : Set S
  /-- The profile vertex reached by the logical channel. -/
  logicalVertex : Set S
  /-- The profile vertex reached by the predicate channel. -/
  predVertex : Set S
  mainTriple : ProfileTriple P domain codomain base
  funTriple : ProfileTriple P rawVertex tailVertex funVertex
  ax : (AxProfile P seed).Nonempty
  directLogical : DirectLayer P C logicalVertex
  directPred : DirectLayer P C predVertex
  /-- The parity of the initial wrapper path from the seed to the base vertex. -/
  initialParity : Bool
  /-- The wrapper syntax for the initial seed-to-base path. -/
  initial : DataWrapper S initialParity
  initialFormed : initial.Formed L {seed} base
  /-- The logical, raw, and predicate wrappers attached to the base vertex. -/
  channel : ChannelCode S
  channelFormed : channel.Formed L base logicalVertex rawVertex predVertex
  /-- The odd wrapper path returning from the raw vertex to the base vertex. -/
  returnPath : DataWrapper S true
  returnFormed : returnPath.Formed L rawVertex base
  /-- The even wrapper path from the function vertex to the setup codomain. -/
  funPath : DataWrapper S false
  funFormed : funPath.Formed L funVertex codomain
  /-- The positive wrapper lifting the seed profile to the setup domain. -/
  lifting : PositiveDataWrapper S
  liftingFormed : lifting.Formed L.witnesses (AxProfile P seed) domain
  /-- The data tail at the designated tail profile vertex. -/
  tail : DataTail S
  tailFormed : tail.Formed L tailVertex

namespace ChannelSetup
variable {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
  {L : LogicSetup P Γ γ C}

/-- The double channel formed by the return wrapper followed by the raw wrapper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variantd934298cfc8401330de7038d4a29f2ab66a8979fee7b8c6790b4f6d24415d9a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variantd934298cfc8401330de7038d4a29f2ab66a8979fee7b8c6790b4f6d24415d9a6.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e08ade0998e8488cb1eaca1e8a88450ad374506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
