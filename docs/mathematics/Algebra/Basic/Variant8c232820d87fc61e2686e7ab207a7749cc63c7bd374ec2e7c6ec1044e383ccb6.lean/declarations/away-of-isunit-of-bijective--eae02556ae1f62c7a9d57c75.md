# away_of_isUnit_of_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff49bb9d8d1f589ec0cfb62cef7fda901f4015da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d17808d8-649c-88ac-8ca1-d58015603bad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2538c48c-23ee-fa80-9e04-8c7afac4c88e",
  "kind": "theorem",
  "lexical_name": "away_of_isUnit_of_bijective",
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
  "slug": "away-of-isunit-of-bijective--eae02556ae1f62c7a9d57c75",
  "source": {
    "blob": "ff49bb9d8d1f589ec0cfb62cef7fda901f4015da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 151,
    "path": "GRWTSK/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae02556ae1f62c7a9d57c7520d377b10a1791dc78fd12c34467cdafbd6b8549",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2538c48c-23ee-fa80-9e04-8c7afac4c88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem away_of_isUnit_of_bijective {R : Type*} (S : Type*) [CommRing R] [CommRing S]
    [Algebra R S] {r : R} (hr : IsUnit r) (H : Function.Bijective (algebraMap R S)) :
    IsLocalization.Away r S :=
  { map_units' := by
      rintro ⟨_, n, rfl⟩
      exact (algebraMap R S).isUnit_map (hr.pow _)
    surj' := fun z => by
      obtain ⟨z', rfl⟩ := H.2 z
      exact ⟨⟨z', 1⟩, by simp⟩
    eq_iff_exists' := fun {x y} => by
      erw [H.1.eq_iff]
      constructor
      · rintro rfl
        exact ⟨1, rfl⟩
      · rintro ⟨⟨_, n, rfl⟩, e⟩
        exact (hr.pow _).mul_right_inj.mp e }
#align is_localization.away_of_is_unit_of_bijective IsLocalization.away_of_isUnit_of_bijective

end AtUnits

end IsLocalization

namespace Localization

open IsLocalization

variable {M}

/-- Given a map `f : R →+* S` and an element `r : R`, such that `f r` is invertible,
  we may construct a map `Rᵣ →+* S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8c232820d87fc61e2686e7ab207a7749cc63c7bd374ec2e7c6ec1044e383ccb6.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff49bb9d8d1f589ec0cfb62cef7fda901f4015da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
