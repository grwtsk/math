# norm_logDeriv_factor_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1cc82b4-8af8-4f0a-fbb0-4cae3635eedf",
  "kind": "theorem",
  "lexical_name": "norm_logDeriv_factor_le",
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
  "slug": "norm-logderiv-factor-le--3a27380b2eb21974341475d1",
  "source": {
    "blob": "8720ed03876e35ab5cb829948fbb0881db8a642a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 121,
    "path": "GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a27380b2eb21974341475d181999729b40a50b27abd80b1a74c28c5d035a032",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1cc82b4-8af8-4f0a-fbb0-4cae3635eedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_logDeriv_factor_le (a z : ℂ) (δ : ℝ) (hδ : 0 < δ)
    (ha : ‖a‖ ≤ 11 / 4) (hz : ‖z‖ ≤ 9 / 4) (hsep : δ ≤ ‖z - a‖) :
    ‖logDeriv (factor 3 a) z‖ ≤ 1 / δ + 1 := by
  have hza : z ≠ a := by intro he; simp [he] at hsep; linarith
  have hd : (3 : ℂ) ^ 2 - conj a * z ≠ 0 :=
    denominator_ne_zero 3 (by norm_num) a z (by linarith) (by linarith)
  rw [logDeriv_factor 3 (by norm_num) a z hza hd]
  calc
    _ ≤ ‖(z - a)⁻¹‖ + ‖conj a / ((3 : ℂ) ^ 2 - conj a * z)‖ := norm_add_le _ _
    _ ≤ 1 / δ + 1 := add_le_add
      (by simpa only [norm_inv, norm_div, norm_one, inv_eq_one_div] using
        div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1) hδ hsep)
      (norm_regular_term_le_one a z ha hz)

end
end GRWTSK.Analysis.Complex.DiskBlaschkeFactors
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/DiskBlaschkeFactors.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/DiskBlaschkeFactors.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8720ed03876e35ab5cb829948fbb0881db8a642a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
