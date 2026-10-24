# IsUltraUniformity.inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e65d779-1dfd-abb0-c4bb-c83f3bd67763",
  "kind": "lemma",
  "lexical_name": "IsUltraUniformity.inf",
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
  "slug": "isultrauniformity-inf--79a87cd34d388c6b61c70b7a",
  "source": {
    "blob": "1c0c1102bfaa15dc0d17eb987968959a4fd87855",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79a87cd34d388c6b61c70b7a9fdb3bbecf4ae167cbf6a9150d89b4e92359a6ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e65d779-1dfd-abb0-c4bb-c83f3bd67763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsUltraUniformity.inf {u u' : UniformSpace X} (h : @IsUltraUniformity _ u)
    (h' : @IsUltraUniformity _ u') :
    @IsUltraUniformity _ (u ⊓ u') := by
  letI := u ⊓ u'
  refine .mk_of_hasBasis (h.hasBasis.inf h'.hasBasis) ?_ ?_
  · exact fun _ ⟨⟨_, hU, _⟩, _, hU', _⟩ ↦ hU.inter hU'
  · exact fun _ ⟨⟨_, _, hU⟩, _, _, hU'⟩ ↦ hU.inter hU'

/-- The product of uniform spaces with nonarchimedean uniformities has a
nonarchimedean uniformity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Constructions/Variant2055884b706e8a971da56096bf3daf64e08575b95af21cab400714221c673f92.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c0c1102bfaa15dc0d17eb987968959a4fd87855` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
