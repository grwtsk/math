# mem_of_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e965597-3aae-d155-91d7-6fc1a31983c3",
  "kind": "theorem",
  "lexical_name": "mem_of_integral",
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
  "slug": "mem-of-integral--4372fb4ec2af52f29b62972d",
  "source": {
    "blob": "ca71edd787020be566ed691b4164158fbc3f4008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4372fb4ec2af52f29b62972d3959aca0bf48da3bedf7a0266fa2ebfec3d91138",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e965597-3aae-d155-91d7-6fc1a31983c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_integral {x : R} (hx : IsIntegral O x) : x ∈ v.integer :=
  let ⟨p, hpm, hpx⟩ := hx
  le_of_not_lt fun hvx : 1 < v x => by
    rw [hpm.as_sum, eval₂_add, eval₂_pow, eval₂_X, eval₂_finset_sum, add_eq_zero_iff_eq_neg] at hpx
    replace hpx := congr_arg v hpx; refine ne_of_gt ?_ hpx
    rw [v.map_neg, v.map_pow]
    refine v.map_sum_lt' (zero_lt_one.trans_le (one_le_pow_of_one_le' hvx.le _)) fun i hi => ?_
    rw [eval₂_mul, eval₂_pow, eval₂_C, eval₂_X, v.map_mul, v.map_pow, ←
      one_mul (v x ^ p.natDegree)]
    rcases (hv.2 <| p.coeff i).lt_or_eq with hvpi | hvpi
    · exact mul_lt_mul'' hvpi (pow_lt_pow_right₀ hvx <| Finset.mem_range.1 hi) zero_le' zero_le'
    · rw [hvpi, one_mul, one_mul]; exact pow_lt_pow_right₀ hvx (Finset.mem_range.1 hi)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Integral/Variant489dcffaf19e81900864ceb56f9c10f5435507abdce0090228ccbe217f75ad81.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca71edd787020be566ed691b4164158fbc3f4008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
