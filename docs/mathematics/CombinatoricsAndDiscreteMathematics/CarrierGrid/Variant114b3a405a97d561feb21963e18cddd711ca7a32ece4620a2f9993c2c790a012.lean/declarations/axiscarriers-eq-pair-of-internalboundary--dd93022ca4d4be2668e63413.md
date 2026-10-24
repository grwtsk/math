# axisCarriers_eq_pair_of_internalBoundary

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
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f342707d-3e0a-0034-b901-379f78694698",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74812174-9122-f0cc-8a82-b1caab4c2afc",
  "kind": "theorem",
  "lexical_name": "axisCarriers_eq_pair_of_internalBoundary",
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
  "slug": "axiscarriers-eq-pair-of-internalboundary--dd93022ca4d4be2668e63413",
  "source": {
    "blob": "c150aa123482d10b5dfd8be666ae753b2ec3af31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 192,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd93022ca4d4be2668e6341395261640053e86a1b0f5500516394dde02500787",
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

Occurrence: `result:74812174-9122-f0cc-8a82-b1caab4c2afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem axisCarriers_eq_pair_of_internalBoundary
    {size : Nat} {coordinate : ℚ} (left right : Fin size)
    (adjacent : right.val = left.val + 1)
    (boundaryEquation : (size : ℚ) * coordinate = (right.val : ℚ)) :
    axisCarriers size coordinate = {left, right} := by
  ext candidate
  simp only [axisCarriers, Finset.mem_filter, Finset.mem_univ, true_and,
    Finset.mem_insert, Finset.mem_singleton]
  constructor
  · rintro ⟨candidateLower, candidateUpper⟩
    have lowerRational : (candidate.val : ℚ) ≤ (right.val : ℚ) := by
      rw [← boundaryEquation]
      exact candidateLower
    have upperRational : (right.val : ℚ) ≤ (candidate.val : ℚ) + 1 := by
      rw [← boundaryEquation]
      exact candidateUpper
    have lowerNatural : candidate.val ≤ right.val := by
      exact_mod_cast lowerRational
    have upperNatural : right.val ≤ candidate.val + 1 := by
      exact_mod_cast upperRational
    have range : candidate.val = left.val ∨ candidate.val = right.val := by
      omega
    rcases range with equality | equality
    · exact Or.inl (fin_eq_of_val_eq equality)
    · exact Or.inr (fin_eq_of_val_eq equality)
  · rintro (rfl | rfl)
    · constructor
      · rw [boundaryEquation, adjacent]
        norm_num
      · rw [boundaryEquation, adjacent]
        norm_num
    · constructor <;> simp [boundaryEquation]

/-- A two-dimensional interior stratum, with boundary status certified
independently on each axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CarrierGrid/Variant114b3a405a97d561feb21963e18cddd711ca7a32ece4620a2f9993c2c790a012.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c150aa123482d10b5dfd8be666ae753b2ec3af31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
