# bijective_rangeRestrict_comp_of_valuationRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df8c3bc29a5f3d2057aeeb24fa9d5646d80e0585",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:922898a6-5a33-eb49-ea51-46c0c93494e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:552b40f9-e708-c011-2539-e48b6e14371a",
  "kind": "lemma",
  "lexical_name": "bijective_rangeRestrict_comp_of_valuationRing",
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
  "slug": "bijective-rangerestrict-comp-of-valuationring--e096abb7265357cb811b4045",
  "source": {
    "blob": "df8c3bc29a5f3d2057aeeb24fa9d5646d80e0585",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 155,
    "path": "GRWTSK/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e096abb7265357cb811b4045b0b0956d7c305d00eca63f5c89f213358267314a",
  "verification": {
    "reference": "docs/verification/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552b40f9-e708-c011-2539-e48b6e14371a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bijective_rangeRestrict_comp_of_valuationRing [IsDomain R] [ValuationRing R]
    [IsLocalRing S] [Algebra R K] [IsFractionRing R K]
    (f : R →+* S) (g : S →+* K) (h : g.comp f = algebraMap R K) [IsLocalHom f] :
    Function.Bijective (g.rangeRestrict.comp f) := by
  refine ⟨?_, ?_⟩
  · exact .of_comp (f := Subtype.val) (by convert (IsFractionRing.injective R K); rw [← h]; rfl)
  · let V : ValuationSubring K :=
      ⟨(algebraMap R K).range, ValuationRing.isInteger_or_isInteger R⟩
    suffices LocalSubring.range g ≤ V.toLocalSubring by
      rintro ⟨_, x, rfl⟩
      obtain ⟨y, hy⟩ := this.1 ⟨x, rfl⟩
      exact ⟨y, Subtype.ext (by simpa [← h] using hy)⟩
    apply V.isMax_toLocalSubring
    have H : (algebraMap R K).range ≤ g.range := fun x ⟨a, ha⟩ ↦ ⟨f a, by simp [← ha, ← h]⟩
    refine ⟨H, ⟨?_⟩⟩
    rintro ⟨_, a, rfl⟩ (ha : IsUnit (M := g.range) ⟨algebraMap R K a, _⟩)
    suffices IsUnit a from this.map (algebraMap R K).rangeRestrict
    apply IsUnit.of_map f
    apply (IsLocalHom.of_surjective g.rangeRestrict g.rangeRestrict_surjective).1
    convert ha
    simp [← h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalSubring/Variant608266e352607c5dec707b0cde80d9d17599844bb249d629da04c0294f5c570e.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df8c3bc29a5f3d2057aeeb24fa9d5646d80e0585` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
