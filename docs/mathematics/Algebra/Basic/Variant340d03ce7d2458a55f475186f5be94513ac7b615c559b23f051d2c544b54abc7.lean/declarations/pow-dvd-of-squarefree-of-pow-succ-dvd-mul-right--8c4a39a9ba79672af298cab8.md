# pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9675828b-481a-f725-0825-e96cb1531248",
  "kind": "theorem",
  "lexical_name": "pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right",
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
  "slug": "pow-dvd-of-squarefree-of-pow-succ-dvd-mul-right--8c4a39a9ba79672af298cab8",
  "source": {
    "blob": "99043c8970fb9bdb9126ed4e3981262362417b74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 183,
    "path": "GRWTSK/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c4a39a9ba79672af298cab84d3ad4e209a877c8be6421d29078a868a7d55f79",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9675828b-481a-f725-0825-e96cb1531248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right {k : ℕ}
    (hx : Squarefree x) (hp : Prime p) (h : p ^ (k + 1) ∣ x * y) :
    p ^ k ∣ y := by
  by_cases hxp : p ∣ x
  · obtain ⟨x', rfl⟩ := hxp
    have hx' : ¬ p ∣ x' := fun contra ↦ hp.not_unit <| hx p (mul_dvd_mul_left p contra)
    replace h : p ^ k ∣ x' * y := by
      rw [pow_succ', mul_assoc] at h
      exact (mul_dvd_mul_iff_left hp.ne_zero).mp h
    exact hp.pow_dvd_of_dvd_mul_left _ hx' h
  · exact (pow_dvd_pow _ k.le_succ).trans (hp.pow_dvd_of_dvd_mul_left _ hxp h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant340d03ce7d2458a55f475186f5be94513ac7b615c559b23f051d2c544b54abc7.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99043c8970fb9bdb9126ed4e3981262362417b74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
