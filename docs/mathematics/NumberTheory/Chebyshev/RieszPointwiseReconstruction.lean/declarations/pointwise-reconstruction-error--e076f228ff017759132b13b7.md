# pointwise_reconstruction_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c0177f0-bcec-4311-7de6-17e8d7f08a56",
  "kind": "theorem",
  "lexical_name": "pointwise_reconstruction_error",
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
  "slug": "pointwise-reconstruction-error--e076f228ff017759132b13b7",
  "source": {
    "blob": "e086f62a7417d154af4f993c89b52d6fdc9b9df6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 165,
    "path": "GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e076f228ff017759132b13b734944a719bec35895d0eaa82566f84ab12685aaf",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c0177f0-bcec-4311-7de6-17e8d7f08a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pointwise_reconstruction_error (M N : ℕ) (hM : 2 ≤ M) (hMN : M ≤ N)
    (h : ℝ) (hh : 0 < h) (hsmall : h ≤ 1)
    (plus minus : ℂ) (εplus εminus : ℝ)
    (hp : ‖(firstRieszPrefix N ((M : ℝ) + h) : ℂ) - plus‖ ≤ εplus)
    (hm : ‖(firstRieszPrefix N ((M : ℝ) - h) : ℂ) - minus‖ ≤ εminus) :
    ‖(psiHalf (M : ℝ) : ℂ) - (plus - minus) / ((2 * h : ℝ) : ℂ)‖ ≤
      (εplus + εminus) / (2 * h) := by
  have hid : (psiHalf (M : ℝ) : ℂ) =
      ((firstRieszPrefix N ((M : ℝ) + h) : ℂ) -
        (firstRieszPrefix N ((M : ℝ) - h) : ℂ)) / ((2 * h : ℝ) : ℂ) := by
    rw [← symmetricRieszQuotient_nat M N hM hMN h hh hsmall]
    simp [symmetricRieszQuotient]
  rw [hid, ← sub_div, norm_div]
  have htriangle := (norm_sub_le
    ((firstRieszPrefix N ((M : ℝ) + h) : ℂ) - plus)
    ((firstRieszPrefix N ((M : ℝ) - h) : ℂ) - minus)).trans (add_le_add hp hm)
  have hnum : ‖((firstRieszPrefix N ((M : ℝ) + h) : ℂ) -
      (firstRieszPrefix N ((M : ℝ) - h) : ℂ)) - (plus - minus)‖ ≤ εplus + εminus := by
    calc
      _ = ‖((firstRieszPrefix N ((M : ℝ) + h) : ℂ) - plus) -
          ((firstRieszPrefix N ((M : ℝ) - h) : ℂ) - minus)‖ := by congr 1; ring
      _ ≤ _ := htriangle
  simpa [Complex.norm_real, abs_of_pos hh] using
    div_le_div_of_nonneg_right hnum (show 0 ≤ 2 * h by positivity)

end GRWTSK.NumberTheory.Chebyshev.RieszPointwiseReconstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/RieszPointwiseReconstruction.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e086f62a7417d154af4f993c89b52d6fdc9b9df6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
