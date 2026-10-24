# TietzeExtension.of_homeo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b3db329f400ab296085c00d203ded5f2010274b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a7426d7a-c174-1415-7352-81d6de0e7866",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab5260cb-0ad5-97b8-7703-f59474f32c01",
  "kind": "theorem",
  "lexical_name": "TietzeExtension.of_homeo",
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
  "slug": "tietzeextension-of-homeo--810617039d9f19617a61b0c4",
  "source": {
    "blob": "9b3db329f400ab296085c00d203ded5f2010274b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:810617039d9f19617a61b0c4947889d6dd4879ef7791f1429fe293a34645d98b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab5260cb-0ad5-97b8-7703-f59474f32c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TietzeExtension.of_homeo {Y : Type v} {Z : Type w} [TopologicalSpace Y]
    [TopologicalSpace Z] [TietzeExtension.{u, w} Z] (e : Y ≃ₜ Z) :
    TietzeExtension.{u, v} Y :=
  .of_retract (e : C(Y, Z)) (e.symm : C(Z, Y)) <| by simp

end TietzeExtensionClass

/-! The Tietze extension theorem for `ℝ`. -/

variable {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [NormalSpace Y]

open Metric Set Filter

open BoundedContinuousFunction Topology

noncomputable section

namespace BoundedContinuousFunction

/-- One step in the proof of the Tietze extension theorem. If `e : C(X, Y)` is a closed embedding
of a topological space into a normal topological space and `f : X →ᵇ ℝ` is a bounded continuous
function, then there exists a bounded continuous function `g : Y →ᵇ ℝ` of the norm `‖g‖ ≤ ‖f‖ / 3`
such that the distance between `g ∘ e` and `f` is at most `(2 / 3) * ‖f‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantda9df031f3010298f7952de60f7b07a0269563d3926d8209e670892d3a1d410c.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3db329f400ab296085c00d203ded5f2010274b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
