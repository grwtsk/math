# IsLocallyClosedAt.preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b610e6b-e49a-026a-ada6-b82aeca39adf",
  "kind": "lemma",
  "lexical_name": "IsLocallyClosedAt.preimage",
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
  "slug": "islocallyclosedat-preimage--e4de50026a5a7624989351d5",
  "source": {
    "blob": "6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4de50026a5a7624989351d5bd7a607812c9e9417fc0f6ed6fa50a6a2d4cc5e0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b610e6b-e49a-026a-ada6-b82aeca39adf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocallyClosedAt.preimage {x : X} {s : Set Y} {f : X → Y}
    (hs : IsLocallyClosedAt s (f x))
    (hf : Continuous f) :
    IsLocallyClosedAt (f ⁻¹' s) x := by
  obtain ⟨U, hU, Z, hZ, eq⟩ := hs
  exact ⟨_, hf.tendsto x hU, _, hZ.preimage hf, by simp [← preimage_inter, eq]⟩

/-- A set `s` is locally closed at a point `x` if one of the equivalent conditions below hold
1. There is a neighborhood `U` of `x` such that `U ∩ s` can be written `U ∩ Z` for some closed set
  `Z` (this is the definition).
2. There is a neighborhood `U` of `x` such that `U ∩ s` is a closed subset of `U`.
3. There is a neighborhood `U` of `x` such that `U ∩ closure s ⊆ s`.
4. There is a neighborhood `U` of `x` such that `U ∩ s = U ∩ closure s`.
5. `s` coincides with some closed set `Z` eventually near `x`.
6. `s` and `closure s` coincide eventually near `x`.
7. `closure s ⊆ s` eventually near `x`.
8. `s` is a neighborhood of `x` inside `closure s`.
9. `coborder s` is a neighborhood of `x`.

Furthermore (see API below), in assertions 1, 2, 3 and 4, one can restrict to `U` belonging
to a basis of neighborhoods of `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
