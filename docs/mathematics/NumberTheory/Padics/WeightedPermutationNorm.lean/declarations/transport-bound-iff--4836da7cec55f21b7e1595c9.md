# transport_bound_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f2dd7af-5d0e-522d-3224-9a30dcf887eb",
  "kind": "theorem",
  "lexical_name": "transport_bound_iff",
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
  "slug": "transport-bound-iff--4836da7cec55f21b7e1595c9",
  "source": {
    "blob": "aedebc589a6d82162354c8cee08b70f81e899c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 94,
    "path": "GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4836da7cec55f21b7e1595c954779570a8b64c9b2622bb14c87c84fb23c1d5eb",
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

Occurrence: `result:1f2dd7af-5d0e-522d-3224-9a30dcf887eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transport_bound_iff (e : Equiv.Perm ι) (w : ι → ℤ) (B : ℚ) :
    OperatorBound p (transport e w) B ↔ ∀ i, padicNorm p (w i : ℚ) ≤ B := by
  constructor
  · intro h i
    have hb := h (fun _ => (1 : ℚ))
    rw [supNorm_ones, mul_one] at hb
    have hi := (entry_le p (transport e w (fun _ => (1 : ℚ))) (e i)).trans hb
    simpa only [transport_at, mul_one] using hi
  · intro h v
    apply (supNorm_le_iff p _ _).mpr
    intro j
    change padicNorm p ((w (e.symm j) : ℚ) * v (e.symm j)) ≤ _
    rw [padicNorm.mul]
    calc
      _ ≤ padicNorm p (w (e.symm j) : ℚ) * supNorm p v :=
        mul_le_mul_of_nonneg_left (entry_le p v (e.symm j)) (padicNorm.nonneg _)
      _ ≤ B * supNorm p v :=
        mul_le_mul_of_nonneg_right (h (e.symm j)) (supNorm_nonneg p v)

/-- The inverse bound depends on the LARGEST inverse-column norm, not their product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Padics/WeightedPermutationNorm.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Padics/WeightedPermutationNorm.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aedebc589a6d82162354c8cee08b70f81e899c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
