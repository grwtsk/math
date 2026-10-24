# instSecondCountableTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b683c313c1f4f1f58798d0a207659f9583ebba722693bd825330c75974e529a2",
  "kind": "instance",
  "lexical_name": "instSecondCountableTopology",
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
  "slug": "instsecondcountabletopology--2351d154595ed6b6d4364dbb",
  "source": {
    "blob": "75f7c6ad28e6a4748201ef8508e74c0d82fa9cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2351d154595ed6b6d4364dbb9bfa8a122c510d8c72f068ed15efc354cff4ff8e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b683c313c1f4f1f58798d0a207659f9583ebba722693bd825330c75974e529a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSecondCountableTopology [SecondCountableTopology X] [LocallyCompactSpace X]
    [SecondCountableTopology Y] : SecondCountableTopology C(X, Y) := by
  apply secondCountableTopology
  have (U : countableBasis X) : LocallyCompactSpace U.1 :=
    (isOpen_of_mem_countableBasis U.2).locallyCompactSpace
  set K := fun U : countableBasis X ↦ CompactExhaustion.choice U.1
  use ⋃ U : countableBasis X, Set.range fun n ↦ K U n
  refine ⟨countable_iUnion fun _ ↦ countable_range _, ?_, ?_⟩
  · simp only [mem_iUnion, mem_range]
    rintro K ⟨U, n, rfl⟩
    exact ((K U).isCompact _).image continuous_subtype_val
  · intro f V hVo x hxV
    obtain ⟨U, hU, hxU, hUV⟩ : ∃ U ∈ countableBasis X, x ∈ U ∧ U ⊆ f ⁻¹' V := by
      rw [← (isBasis_countableBasis _).mem_nhds_iff]
      exact (hVo.preimage (map_continuous f)).mem_nhds hxV
    lift x to U using hxU
    lift U to countableBasis X using hU
    rcases (K U).exists_mem_nhds x with ⟨n, hn⟩
    refine ⟨K U n, mem_iUnion.2 ⟨U, mem_range_self _⟩, ?_, ?_⟩
    · rw [← map_nhds_subtype_coe_eq_nhds x.2]
      exacts [image_mem_map hn, (isOpen_of_mem_countableBasis U.2).mem_nhds x.2]
    · rw [mapsTo_image_iff]
      exact fun y _ ↦ hUV y.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SecondCountableSpace/Variantd7955ae2664d2556087872705526f8ed925a68be52e34f181fb0fd29345c7b89.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75f7c6ad28e6a4748201ef8508e74c0d82fa9cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
