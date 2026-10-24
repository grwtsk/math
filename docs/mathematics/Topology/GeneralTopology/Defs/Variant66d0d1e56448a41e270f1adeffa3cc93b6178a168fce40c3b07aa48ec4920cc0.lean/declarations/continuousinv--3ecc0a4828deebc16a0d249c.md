# ContinuousInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:969dd778346e3e93f4539549d216999e40d1770041739efd18c049bab0f5c631",
  "kind": "class",
  "lexical_name": "ContinuousInv",
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
  "slug": "continuousinv--3ecc0a4828deebc16a0d249c",
  "source": {
    "blob": "152af2a0f1d01191aec9e84866bd14b2a0136247",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ecc0a4828deebc16a0d249c91de7e5190e0850d117b0d70d0507cfa7ce6c654",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:969dd778346e3e93f4539549d216999e40d1770041739efd18c049bab0f5c631`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousInv (G : Type u) [TopologicalSpace G] [Inv G] : Prop where
  continuous_inv : Continuous fun a : G => a⁻¹

attribute [continuity, fun_prop] ContinuousInv.continuous_inv

export ContinuousInv (continuous_inv)
export ContinuousNeg (continuous_neg)

section ContinuousInv

variable [TopologicalSpace G] [Inv G] [ContinuousInv G]

/-- If a function converges to a value in a multiplicative topological group, then its inverse
converges to the inverse of this value.
For the version in topological groups with zero (including topological fields)
assuming additionally that the limit is nonzero, use `Filter.Tendsto.inv₀`. -/
@[to_additive
  "If a function converges to a value in an additive topological group, then its
  negation converges to the negation of this value."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant66d0d1e56448a41e270f1adeffa3cc93b6178a168fce40c3b07aa48ec4920cc0.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `152af2a0f1d01191aec9e84866bd14b2a0136247` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
