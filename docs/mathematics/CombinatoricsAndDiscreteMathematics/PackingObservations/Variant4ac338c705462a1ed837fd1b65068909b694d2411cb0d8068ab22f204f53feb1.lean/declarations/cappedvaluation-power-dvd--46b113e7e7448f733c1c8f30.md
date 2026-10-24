# cappedValuation_power_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01558955-aaee-d731-d96d-12d445c55b22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e288180f-edfa-8b75-67bf-ed24398155e1",
  "kind": "theorem",
  "lexical_name": "cappedValuation_power_dvd",
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
  "slug": "cappedvaluation-power-dvd--46b113e7e7448f733c1c8f30",
  "source": {
    "blob": "43bdedd3a4604fa32406d0c7c2071ccd89928165",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46b113e7e7448f733c1c8f30758ad3058b9bcd719577fc487e7eddf8fea69841",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e288180f-edfa-8b75-67bf-ed24398155e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cappedValuation_power_dvd (p r k : ℕ) (z : ℤ) (hp : p.Prime) (hk : k ≤ r) :
    k ≤ cappedValuation p r z ↔ (p : ℤ) ^ k ∣ z := by
  by_cases hz : z = 0
  · subst z
    simp [hk]
  · rw [cappedValuation, if_neg hz, le_min_iff, and_iff_left hk, padicValInt,
      ← padicValNat_dvd_iff_le_of_ne_one hp.ne_one (Int.natAbs_ne_zero.mpr hz),
      ← Int.ofNat_dvd_left, Nat.cast_pow]

/-- A finite prime-power profile determines a capped valuation without reducing
Mathlib's valuation implementation. Generated certificates may check the bounded
integer divisibility tests directly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PackingObservations/Variant4ac338c705462a1ed837fd1b65068909b694d2411cb0d8068ab22f204f53feb1.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43bdedd3a4604fa32406d0c7c2071ccd89928165` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
