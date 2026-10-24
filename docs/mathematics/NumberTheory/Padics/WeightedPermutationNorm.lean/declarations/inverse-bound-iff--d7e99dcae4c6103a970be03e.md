# inverse_bound_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e34cf55-21ec-07fb-d654-92c7e36f03f5",
  "kind": "theorem",
  "lexical_name": "inverse_bound_iff",
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
  "slug": "inverse-bound-iff--d7e99dcae4c6103a970be03e",
  "source": {
    "blob": "aedebc589a6d82162354c8cee08b70f81e899c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 114,
    "path": "GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7e99dcae4c6103a970be03e7c339605bf24b2f86ad818712b843a454b13c9dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Padics/WeightedPermutationNorm.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e34cf55-21ec-07fb-d654-92c7e36f03f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_bound_iff (e : Equiv.Perm ι) (w : ι → ℤ)
    (hw : ∀ i, w i ≠ 0) (B : ℚ) :
    OperatorBound p (inverse e w hw) B ↔
      ∀ i, padicNorm p (1 / (w i : ℚ)) ≤ B := by
  constructor
  · intro h i
    have hb := h (fun _ => (1 : ℚ))
    rw [supNorm_ones, mul_one] at hb
    exact (entry_le p (inverse e w hw (fun _ => (1 : ℚ))) i).trans hb
  · intro h v
    apply (supNorm_le_iff p _ _).mpr
    intro i
    change padicNorm p (v (e i) / (w i : ℚ)) ≤ _
    have he : padicNorm p (v (e i) / (w i : ℚ)) =
        padicNorm p (1 / (w i : ℚ)) * padicNorm p (v (e i)) := by
      simp only [padicNorm.div, padicNorm.one]
      ring
    rw [he]
    calc
      _ ≤ padicNorm p (1 / (w i : ℚ)) * supNorm p v :=
        mul_le_mul_of_nonneg_left (entry_le p v (e i)) (padicNorm.nonneg _)
      _ ≤ B * supNorm p v :=
        mul_le_mul_of_nonneg_right (h i) (supNorm_nonneg p v)

/-- Integral forward columns are nonexpanding in this declared rational local norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Padics/WeightedPermutationNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aedebc589a6d82162354c8cee08b70f81e899c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
