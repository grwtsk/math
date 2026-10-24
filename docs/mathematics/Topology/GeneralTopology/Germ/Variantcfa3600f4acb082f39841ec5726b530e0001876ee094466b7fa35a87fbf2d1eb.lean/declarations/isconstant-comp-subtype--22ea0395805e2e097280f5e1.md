# isConstant_comp_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:218cce2f-466d-f7ca-e5fd-8ad65d7e979d",
  "kind": "lemma",
  "lexical_name": "isConstant_comp_subtype",
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
  "slug": "isconstant-comp-subtype--22ea0395805e2e097280f5e1",
  "source": {
    "blob": "0c1007cf008628ae41b8d1987294581706770271",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22ea0395805e2e097280f5e1d91abc29d98f0f4748eff79c79453136e664eb94",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:218cce2f-466d-f7ca-e5fd-8ad65d7e979d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConstant_comp_subtype {s : Set X} {f : X → Y} {x : s}
    (hf : (f : Germ (𝓝 (x : X)) Y).IsConstant) :
    ((f ∘ Subtype.val : s → Y) : Germ (𝓝 x) Y).IsConstant :=
  isConstant_comp_tendsto hf continuousAt_subtype_val

end Filter.Germ

/-- If the germ of `f` w.r.t. each `𝓝 x` is constant, `f` is locally constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Germ/Variantcfa3600f4acb082f39841ec5726b530e0001876ee094466b7fa35a87fbf2d1eb.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c1007cf008628ae41b8d1987294581706770271` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
