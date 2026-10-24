# liftProp_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a66e4adeee7c4c3f5627f275887e818099cff6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7894d3fc-c039-e006-9ebf-c23f897faece",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11adbeb0-ba1c-d4f8-34b5-d3e3afe9e795",
  "kind": "theorem",
  "lexical_name": "liftProp_inclusion",
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
  "slug": "liftprop-inclusion--e686aec61502f56b4d15dfb5",
  "source": {
    "blob": "6a66e4adeee7c4c3f5627f275887e818099cff6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 575,
    "line": 556,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e686aec61502f56b4d15dfb583f349a1daa426f7e1132eaf7227aaceb17276fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11adbeb0-ba1c-d4f8-34b5-d3e3afe9e795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–575.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftProp_inclusion {Q : (H → H) → Set H → H → Prop} (hG : LocalInvariantProp G G Q)
    (hQ : ∀ y, Q id univ y) {U V : Opens M} (hUV : U ≤ V) :
    LiftProp Q (Set.inclusion hUV : U → V) := by
  intro x
  show LiftPropAt Q (id ∘ inclusion hUV) x
  rw [← hG.liftPropAt_iff_comp_inclusion hUV]
  apply hG.liftProp_id hQ
#align structure_groupoid.local_invariant_prop.lift_prop_inclusion StructureGroupoid.LocalInvariantProp.liftProp_inclusion

end LocalInvariantProp

section LocalStructomorph

variable (G)

open LocalHomeomorph

/-- A function from a model space `H` to itself is a local structomorphism, with respect to a
structure groupoid `G` for `H`, relative to a set `s` in `H`, if for all points `x` in the set, the
function agrees with a `G`-structomorphism on `s` in a neighbourhood of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant0f14cd8952727b05e1a53c7d694195130f2e98d5488e00a06b4849ed14be1731.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a66e4adeee7c4c3f5627f275887e818099cff6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
