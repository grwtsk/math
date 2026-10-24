# HomeomorphClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bba2a65e1e7e06881e21309ea830ac2ac166cea841b778cc95f1752addeb8c7",
  "kind": "class",
  "lexical_name": "HomeomorphClass",
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
  "slug": "homeomorphclass--d7a4de4c6c1a1cab9e075619",
  "source": {
    "blob": "573e0982447a575324c02219bd5d1d369fec1086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 502,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d7a4de4c6c1a1cab9e0756198a22fee423ed8ab6c98f772428d29937739fdc07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bba2a65e1e7e06881e21309ea830ac2ac166cea841b778cc95f1752addeb8c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HomeomorphClass (F : Type*) (A B : outParam Type*)
    [TopologicalSpace A] [TopologicalSpace B] [h : EquivLike F A B] : Prop where
  map_continuous : ∀ (f : F), Continuous f
  inv_continuous : ∀ (f : F), Continuous (h.inv f)

namespace HomeomorphClass

variable {F α β : Type*} [TopologicalSpace α] [TopologicalSpace β] [EquivLike F α β]

/-- Turn an element of a type `F` satisfying `HomeomorphClass F α β` into an actual
`Homeomorph`. This is declared as the default coercion from `F` to `α ≃ₜ β`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573e0982447a575324c02219bd5d1d369fec1086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
