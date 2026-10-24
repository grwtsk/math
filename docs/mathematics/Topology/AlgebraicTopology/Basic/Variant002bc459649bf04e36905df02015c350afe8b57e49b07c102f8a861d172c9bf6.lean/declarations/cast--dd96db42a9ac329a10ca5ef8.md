# cast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7243b4d2462fcf594ec365016dc8e8d08ef4129287c6c486c4fbeeb34c801fd",
  "kind": "def",
  "lexical_name": "cast",
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
  "slug": "cast--dd96db42a9ac329a10ca5ef8",
  "source": {
    "blob": "7e3f9222e06f847e83852c3483d9081672cf71c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 549,
    "line": 539,
    "path": "GRWTSK/Topology/AlgebraicTopology/Basic/Variant002bc459649bf04e36905df02015c350afe8b57e49b07c102f8a861d172c9bf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd96db42a9ac329a10ca5ef83a3ee84ab6542e0edd88fe88a0c9c2c27ad37475",
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

Occurrence: `declaration:a7243b4d2462fcf594ec365016dc8e8d08ef4129287c6c486c4fbeeb34c801fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–549.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cast {f₀ f₁ g₀ g₁ : C(X, Y)} (F : HomotopyWith f₀ f₁ P) (h₀ : f₀ = g₀) (h₁ : f₁ = g₁) :
    HomotopyWith g₀ g₁ P where
  toHomotopy := F.toHomotopy.cast h₀ h₁
  prop' := F.prop
#align continuous_map.homotopy_with.cast ContinuousMap.HomotopyWith.cast

end HomotopyWith

/-- Given continuous maps `f₀` and `f₁`, we say `f₀` and `f₁` are homotopic with respect to the
predicate `P` if there exists a `HomotopyWith f₀ f₁ P`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Basic/Variant002bc459649bf04e36905df02015c350afe8b57e49b07c102f8a861d172c9bf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Basic/Variant002bc459649bf04e36905df02015c350afe8b57e49b07c102f8a861d172c9bf6.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e3f9222e06f847e83852c3483d9081672cf71c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
