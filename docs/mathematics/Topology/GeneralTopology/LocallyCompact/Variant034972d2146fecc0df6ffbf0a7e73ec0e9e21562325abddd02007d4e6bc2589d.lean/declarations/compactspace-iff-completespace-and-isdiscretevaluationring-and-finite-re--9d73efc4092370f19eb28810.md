# compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1cb29c41-08f8-6fa3-396b-dd4f94363afb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd0cb82b-c8ba-0348-dd86-5cb2bd250dd6",
  "kind": "lemma",
  "lexical_name": "compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField",
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
  "slug": "compactspace-iff-completespace-and-isdiscretevaluationring-and-finite-re--9d73efc4092370f19eb28810",
  "source": {
    "blob": "b10b0450b575b7fa75d3b4a0530403c61ed5040b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 314,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d73efc4092370f19eb288106aba0b9594207960c7eae5c2421a2a9a4863068b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd0cb82b-c8ba-0348-dd86-5cb2bd250dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compactSpace_iff_completeSpace_and_isDiscreteValuationRing_and_finite_residueField
    [(Valued.v : Valuation K Γ₀).RankOne] :
    CompactSpace 𝒪[K] ↔ CompleteSpace 𝒪[K] ∧ IsDiscreteValuationRing 𝒪[K] ∧ Finite 𝓀[K] := by
  refine ⟨fun h ↦ ?_, fun ⟨_, _, h⟩ ↦ ⟨?_⟩⟩
  · have : IsDiscreteValuationRing 𝒪[K] := isDiscreteValuationRing_of_compactSpace
    refine ⟨complete_of_compact, by assumption, ?_⟩
    rw [← isCompact_univ_iff, isCompact_iff_totallyBounded_isComplete,
        totallyBounded_iff_finite_residueField] at h
    exact h.left
  · rw [← totallyBounded_iff_finite_residueField] at h
    rw [isCompact_iff_totallyBounded_isComplete]
    exact ⟨h, completeSpace_iff_isComplete_univ.mp ‹_›⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant034972d2146fecc0df6ffbf0a7e73ec0e9e21562325abddd02007d4e6bc2589d.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b10b0450b575b7fa75d3b4a0530403c61ed5040b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
