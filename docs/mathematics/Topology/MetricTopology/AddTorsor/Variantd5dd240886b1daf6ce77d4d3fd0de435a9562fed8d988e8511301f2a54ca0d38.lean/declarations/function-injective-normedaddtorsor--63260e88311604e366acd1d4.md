# Function.Injective.normedAddTorsor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2be424408e22d38ecbf26538def2841f2f99b219fd2075f0a9e7ec6b81836cef",
  "kind": "abbrev",
  "lexical_name": "Function.Injective.normedAddTorsor",
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
  "slug": "function-injective-normedaddtorsor--63260e88311604e366acd1d4",
  "source": {
    "blob": "7c53ef40d37cf0e7bec06c906575f236270fd5a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 238,
    "path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63260e88311604e366acd1d471f7facfdfb5acc70445d187d07ead3cf1e3686e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2be424408e22d38ecbf26538def2841f2f99b219fd2075f0a9e7ec6b81836cef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Function.Injective.normedAddTorsor {Q : Type*} [VAdd V Q] [VSub V Q]
    [Nonempty Q] [PseudoMetricSpace Q] (f : Q → P) (hf : Function.Injective f)
    (vadd : ∀ (c : V) (x : Q), f (c +ᵥ x) = c +ᵥ f x)
    (vsub : ∀ (x y : Q), x -ᵥ y = f x -ᵥ f y)
    (norm : ∀ (x y : Q), dist x y = dist (f x) (f y)) : NormedAddTorsor V Q where
  __ := hf.addTorsor f vadd vsub
  dist_eq_norm' x y := by simp [norm, NormedAddTorsor.dist_eq_norm', vsub]

/-- Pushforward of a normed add torsor along a surjective map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AddTorsor/Variantd5dd240886b1daf6ce77d4d3fd0de435a9562fed8d988e8511301f2a54ca0d38.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c53ef40d37cf0e7bec06c906575f236270fd5a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
