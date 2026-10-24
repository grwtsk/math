# presheafToTypes_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0a6137a-d641-ea0b-78d9-7a1f162edbb3",
  "kind": "theorem",
  "lexical_name": "presheafToTypes_map",
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
  "slug": "presheaftotypes-map--0e4a6d59100224f736ff1854",
  "source": {
    "blob": "771f84bfb13f93f124f10576564a36c8a7ede005",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e4a6d59100224f736ff185414ba7c1415bfe618a63673de1ae0b78b7db44619",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0a6137a-d641-ea0b-78d9-7a1f162edbb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem presheafToTypes_map {T : X → Type*} {U V : (Opens X)ᵒᵖ} {i : U ⟶ V} {f} :
    (presheafToTypes X T).map i f = fun x => f (i.unop x) :=
  rfl

-- We don't just define this in terms of `presheafToTypes`,
-- as it's helpful later to see (at a syntactic level) that `(presheafToType X T).obj U`
-- is a non-dependent function.
-- We don't use `@[simps]` to generate the projection lemmas here,
-- as it turns out to be useful to have `presheafToType_map`
-- written as an equality of functions (rather than being applied to some argument).
/-- The presheaf of functions on `X` with values in a type `T`.
There is no requirement that the functions are continuous, here.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PresheafOfFunctions/Varianta68e5d05328a3928399c88621468c518043ea75a19e071cce72a550cd379e6f0.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `771f84bfb13f93f124f10576564a36c8a7ede005` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
