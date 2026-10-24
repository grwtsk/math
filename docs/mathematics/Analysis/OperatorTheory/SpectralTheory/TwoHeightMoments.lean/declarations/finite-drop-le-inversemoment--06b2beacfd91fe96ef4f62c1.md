# finite_drop_le_inverseMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b86bed71-9775-4c6e-d871-3e28410c2d03",
  "kind": "theorem",
  "lexical_name": "finite_drop_le_inverseMoment",
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
  "slug": "finite-drop-le-inversemoment--06b2beacfd91fe96ef4f62c1",
  "source": {
    "blob": "2cbd662658764f7b58a592e1ed083e8914afb7e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/Analysis/Spectral/TwoHeightMoments.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06b2beacfd91fe96ef4f62c15bfc0b367482cd181cbb43316e82676dba341317",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b86bed71-9775-4c6e-d871-3e28410c2d03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_drop_le_inverseMoment {ι : Type*} (S : Finset ι)
    (mass λ : ι → ℝ) {e : ℝ} (he : 0<e)
    (hm : ∀ i∈S, 0≤mass i) (hλ : ∀ i∈S, 0<λ i) :
    (response S mass λ e-response S mass λ (2*e))/e≤inverseMoment S mass λ := by
  rw [finite_drop_identity S mass λ he (fun i hi ↦ (hλ i hi).le)]
  apply Finset.sum_le_sum
  intro i hi
  have h := (scalar_inverse_sandwich (hλ i hi) he).2
  simpa only [div_eq_mul_inv, one_div] using
    mul_le_mul_of_nonneg_left h (hm i hi)

/-- A zero mode remains a nonzero positive-height contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/OperatorTheory/SpectralTheory/TwoHeightMoments.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Spectral/TwoHeightMoments.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cbd662658764f7b58a592e1ed083e8914afb7e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
