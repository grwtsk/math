# centeredCoefficientMass_eq_genuine_sub_anchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0ccc6e4-26e0-9d84-377a-093ee8b54602",
  "kind": "theorem",
  "lexical_name": "centeredCoefficientMass_eq_genuine_sub_anchor",
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
  "slug": "centeredcoefficientmass-eq-genuine-sub-anchor--07100c3c9117264a2b3191cc",
  "source": {
    "blob": "b246b38d27d941db1626cbedafe5de6451349325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 267,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07100c3c9117264a2b3191cc86793d33e69b338e6eefb43ad451cf4bdebe8591",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0ccc6e4-26e0-9d84-377a-093ee8b54602`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredCoefficientMass_eq_genuine_sub_anchor
    {X : ℕ} (hX : 0 < X) (w : ℕ → ℝ) :
    centeredCoefficientMass X w =
      genuineCoefficientMass X w - anchorMass X w := by
  unfold centeredCoefficientMass centeredModulusCoefficient
  rw [Finset.sum_sub_distrib]
  have hsingle :
      (∑ d ∈ modulusIndexSet X,
        if d = 1 then anchorMass X w else 0) =
      anchorMass X w := by
    rw [Finset.sum_eq_single 1]
    · simp
    · intro b hb hb1
      simp [hb1]
    · intro hnot
      exact (hnot (one_mem_modulusIndexSet hX)).elim
  rw [hsingle]
  rfl

/-- Exact full centered weighted von Mangoldt mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDCoefficients.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b246b38d27d941db1626cbedafe5de6451349325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
