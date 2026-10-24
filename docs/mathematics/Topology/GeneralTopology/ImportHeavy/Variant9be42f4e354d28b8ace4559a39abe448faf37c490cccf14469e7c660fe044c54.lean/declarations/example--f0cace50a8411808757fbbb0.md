# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c45e26f516e321dffcf8b7b148d8b1771db23ade40ab51e0ab254e4cc7354e29",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f0cace50a8411808757fbbb0",
  "source": {
    "blob": "d52e3b3dc3e20ee2ff2d760f55db4f43f44291c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/ImportHeavy/Variant9be42f4e354d28b8ace4559a39abe448faf37c490cccf14469e7c660fe044c54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0cace50a8411808757fbbb0bca2019670ea3f42dbb41dc34536e74cdf6bc07c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ImportHeavy/Variant9be42f4e354d28b8ace4559a39abe448faf37c490cccf14469e7c660fe044c54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c45e26f516e321dffcf8b7b148d8b1771db23ade40ab51e0ab254e4cc7354e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {X : Type*} [TopologicalSpace X] {f : X → ℕ} {g : ℕ → X}
    (hf : Continuous f) (hg : Continuous g) :
    Continuous (fun x ↦ (f ∘ g) x + 0) := by
  simp
  continuity

-- Currently, `fun_prop` is *not* marked as flexible (as it is rather structural on the exact
-- shape of the goal, and e.g. changing the goal to a defeq one could break the proof).
-- This test documents this behaviour.
/--
warning: `simp` is a flexible tactic modifying `⊢`. Try `simp?` and use the suggested `simp only [...]`. Alternatively, use `suffices` to explicitly state the simplified form.

Note: This linter can be disabled with `set_option linter.flexible false`
---
info: Try this:
  [apply] simp only [Function.comp_apply, add_zero]
---
info: `fun_prop`
modifies the current goal, which was modified by the flexible tactic `simp` on line
-/
#guard_msgs (substring := true) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ImportHeavy/Variant9be42f4e354d28b8ace4559a39abe448faf37c490cccf14469e7c660fe044c54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ImportHeavy/Variant9be42f4e354d28b8ace4559a39abe448faf37c490cccf14469e7c660fe044c54.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d52e3b3dc3e20ee2ff2d760f55db4f43f44291c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
