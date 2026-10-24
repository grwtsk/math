# PathAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e930cde1be2cde37d5d5564bd447d9bb92ebab32f56337fd77b2fabc8ea70ce",
  "kind": "structure",
  "lexical_name": "PathAction",
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
  "slug": "pathaction--6e2e0f36619a0860c8aa66af",
  "source": {
    "blob": "d2e224d3658b4ec514d88f827eafa07e3cf40b3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e2e0f36619a0860c8aa66af61eb03e7b7ac503e584add34f945f2462a432a10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e930cde1be2cde37d5d5564bd447d9bb92ebab32f56337fd77b2fabc8ea70ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PathAction
    (Base : Type u)
    (Fiber : Base → Type v) where
  Path : Base → Base → Type w
  refl : ∀ base, Path base base
  comp :
    ∀ {source middle target},
      Path source middle →
      Path middle target →
      Path source target
  map :
    ∀ {source target},
      Path source target →
      Fiber source →
      Fiber target
  map_refl :
    ∀ base value,
      map (refl base) value = value
  map_comp :
    ∀ {source middle target}
      (first : Path source middle)
      (second : Path middle target)
      (value : Fiber source),
      map (comp first second) value =
        map second (map first value)

namespace PathAction

variable
    {Base : Type u}
    {Fiber : Base → Type v}
    (action : PathAction Base Fiber)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variantd96bfe916d7ec0f22e22758d93339e03bbc4710467af269843d741afd5e3a5f2.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2e224d3658b4ec514d88f827eafa07e3cf40b3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
