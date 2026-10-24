# norm_combine_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a9c2a74-cae5-49b4-a8e4-51f559cd8b07",
  "kind": "theorem",
  "lexical_name": "norm_combine_le",
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
  "slug": "norm-combine-le--c15255f31801c5d317fb3b22",
  "source": {
    "blob": "19ee46bea416fc16a26b673b9db6339ece3f83bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c15255f31801c5d317fb3b22db1b77b583c721bc538d4a43a682ca3716376752",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a9c2a74-cae5-49b4-a8e4-51f559cd8b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_combine_le (a b c d : ℝ) :
    ‖combine a b c d‖ ≤ (|a| + |b| + |c| + |d|) / 4 := by
  have hab := norm_sub_le (a : ℂ) (b : ℂ)
  have hcd := norm_sub_le (c : ℂ) (d : ℂ)
  have hnum := norm_sub_le ((a : ℂ) - (b : ℂ))
    (Complex.I * ((c : ℂ) - (d : ℂ)))
  rw [norm_mul, Complex.norm_I, one_mul] at hnum
  have hbound :
      ‖((a : ℂ) - (b : ℂ)) - Complex.I * ((c : ℂ) - (d : ℂ))‖ ≤
        |a| + |b| + |c| + |d| := by
    simpa only [Complex.norm_real, Real.norm_eq_abs, add_assoc] using
      hnum.trans (add_le_add hab hcd)
  unfold combine
  rw [norm_div]
  have hfour : ‖(4 : ℂ)‖ = (4 : ℝ) := by norm_num
  rw [hfour]
  exact div_le_div_of_nonneg_right hbound (by norm_num)

end WeilPolarization

namespace WeilHermitianForm

variable {T : Type*} [AddCommGroup T] [Module ℂ T]
variable {space : WeilTestSpace T}

/-- The stored diagonal is the entire complex diagonal, not merely its real part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilPolarization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilPolarization.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ee46bea416fc16a26b673b9db6339ece3f83bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
