# Function.Surjective.normedAddTorsor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71017db489112e0a980ce2556dabf0df02cdc08ef80d133520f4852fb8ebbc64",
  "kind": "abbrev",
  "lexical_name": "Function.Surjective.normedAddTorsor",
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
  "slug": "function-surjective-normedaddtorsor--2157678b6e0f517233cdee7a",
  "source": {
    "blob": "bd902453c068c852d2df93d8da7c67478d369afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 255,
    "path": "GRWTSK/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2157678b6e0f517233cdee7a296ec21fb03241a657fe05976dc02ff63a5a0139",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71017db489112e0a980ce2556dabf0df02cdc08ef80d133520f4852fb8ebbc64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Function.Surjective.normedAddTorsor
    {Q : Type*} [VAdd V Q] [VSub V Q] [PseudoMetricSpace Q]
    (f : P → Q) (hf : Surjective f)
    (vadd : ∀ (c : V) (x : P), f (c +ᵥ x) = c +ᵥ f x)
    (vsub : ∀ (x y : P), x -ᵥ y = f x -ᵥ f y)
    (norm : ∀ (x y : P), dist x y = dist (f x) (f y)) : NormedAddTorsor V Q where
  __ := hf.addTorsor f vadd vsub
  dist_eq_norm' := by simp [hf.forall, ← norm, NormedAddTorsor.dist_eq_norm', ← vsub]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/AddTorsor/Variant14237a8eb330b6c661c8d801ff44d57960cc769fe53d734a80433bdfb367d2fc.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd902453c068c852d2df93d8da7c67478d369afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
