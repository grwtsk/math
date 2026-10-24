# axisCarriers_eq_singleton_of_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c150aa123482d10b5dfd8be666ae753b2ec3af31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c557c39a-ebfa-8383-8c1a-13c1c0f147bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74b1ac24-8207-c5a0-875f-006b95f62e77",
  "kind": "theorem",
  "lexical_name": "axisCarriers_eq_singleton_of_cell",
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
  "slug": "axiscarriers-eq-singleton-of-cell--1720ff5063a5fb47b8431277",
  "source": {
    "blob": "c150aa123482d10b5dfd8be666ae753b2ec3af31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1720ff5063a5fb47b84312773d240b63ba5889eafcc4c450631d10bed6be14b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74b1ac24-8207-c5a0-875f-006b95f62e77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem axisCarriers_eq_singleton_of_cell
    {size : Nat} {coordinate : ℚ} (index : Fin size)
    (lower : (index.val : ℚ) < (size : ℚ) * coordinate)
    (upper : (size : ℚ) * coordinate < (index.val : ℚ) + 1) :
    axisCarriers size coordinate = {index} := by
  ext candidate
  simp only [axisCarriers, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_singleton]
  constructor
  · rintro ⟨candidateLower, candidateUpper⟩
    apply fin_eq_of_val_eq
    have leftRational :
        (candidate.val : ℚ) < (index.val : ℚ) + 1 :=
      lt_of_le_of_lt candidateLower upper
    have rightRational :
        (index.val : ℚ) < (candidate.val : ℚ) + 1 :=
      lt_of_lt_of_le lower candidateUpper
    have leftNatural : candidate.val < index.val + 1 := by
      exact_mod_cast leftRational
    have rightNatural : index.val < candidate.val + 1 := by
      exact_mod_cast rightRational
    omega
  · rintro rfl
    exact ⟨lower.le, upper.le⟩

/-- An internal boundary between adjacent in-grid cells selects exactly those
two cells. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c150aa123482d10b5dfd8be666ae753b2ec3af31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
