# liftProp_inclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 538,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c75d08d-b612-ccea-dee0-3c1d1c4c87fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00bd9c73-edb3-b139-7255-544282a87381",
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
  "slug": "liftprop-inclusion--88a69280d0cb132d4c9d3bcb",
  "source": {
    "blob": "704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 538,
    "path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88a69280d0cb132d4c9d3bcb9f14966b2fe0cf31470d9d3a060463efa61ad20a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00bd9c73-edb3-b139-7255-544282a87381`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftProp_inclusion {Q : (H → H) → Set H → H → Prop} (hG : LocalInvariantProp G G Q)
    (hQ : ∀ y, Q id univ y) {U V : Opens M} (hUV : U ≤ V) :
    LiftProp Q (Opens.inclusion hUV : U → V) := by
  intro x
  show LiftPropAt Q (id ∘ Opens.inclusion hUV) x
  rw [← hG.liftPropAt_iff_comp_inclusion hUV]
  apply hG.liftProp_id hQ

end LocalInvariantProp

section LocalStructomorph

variable (G)

open PartialHomeomorph

/-- A function from a model space `H` to itself is a local structomorphism, with respect to a
structure groupoid `G` for `H`, relative to a set `s` in `H`, if for all points `x` in the set, the
function agrees with a `G`-structomorphism on `s` in a neighbourhood of `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variantafb909df2d4c538d7c5255e645d8c9dac8113c300bf19b4b8abbb4878b4b1627.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `704caf6b4ef1ea88ecb99bbc90bc38d18b5b9d15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
