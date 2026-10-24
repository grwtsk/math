# compContinuousMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5c43a75b2317c219ee5c2170d10acc679130b200a57aded91ee2b8ec5745bf1",
  "kind": "def",
  "lexical_name": "compContinuousMap",
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
  "slug": "compcontinuousmap--c89be259d8ffe74fba105fbb",
  "source": {
    "blob": "7e3f9222e06f847e83852c3483d9081672cf71c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 296,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variant002bc459649bf04e36905df02015c350afe8b57e49b07c102f8a861d172c9bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c89be259d8ffe74fba105fbb0fe373849dda90a31d5f0c28c77aad21d1880a6e",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Basic/Variant002bc459649bf04e36905df02015c350afe8b57e49b07c102f8a861d172c9bf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5c43a75b2317c219ee5c2170d10acc679130b200a57aded91ee2b8ec5745bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compContinuousMap {g₀ g₁ : C(Y, Z)} (G : Homotopy g₀ g₁) (f : C(X, Y)) :
    Homotopy (g₀.comp f) (g₁.comp f) where
  toContinuousMap := G.comp (.prodMap (.id _) f)
  map_zero_left _ := G.map_zero_left _
  map_one_left _ := G.map_one_left _

/-- If we have a `Homotopy f₀ f₁` and a `Homotopy g₀ g₁`, then we can compose them and get a
`Homotopy (g₀.comp f₀) (g₁.comp f₁)`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variant002bc459649bf04e36905df02015c350afe8b57e49b07c102f8a861d172c9bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variant002bc459649bf04e36905df02015c350afe8b57e49b07c102f8a861d172c9bf6.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3f9222e06f847e83852c3483d9081672cf71c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
