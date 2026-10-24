# leadingCoefficient_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d32e6dd4-14cf-a74f-5bf1-b1e9bd0457f1",
  "kind": "theorem",
  "lexical_name": "leadingCoefficient_bound",
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
  "slug": "leadingcoefficient-bound--402ece4a1f051fbb25187879",
  "source": {
    "blob": "cae52dd0d395967da727ee2d35dbede4f5d2449f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:402ece4a1f051fbb25187879e7dfa38d31ea031241cab9f79b5efd8fe71c0885",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d32e6dd4-14cf-a74f-5bf1-b1e9bd0457f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoefficient_bound {delta M : ℝ} (hdelta : 0 < delta)
    {z : ℂ} (hz : delta ≤ z.re) (hM : ‖z‖ ≤ M) :
    ‖leadingCoefficient z‖ ≤ coefficientBound delta M := by
  have hzN : delta ≤ ‖z‖ := hz.trans (Complex.re_le_norm z)
  have hs : 0 < Real.sqrt (4096/109395 : ℝ) := Real.sqrt_pos.mpr (by norm_num)
  have hnum : ‖z^2-(1/4 : ℂ)‖ ≤ M^2+1/4 := by
    calc
      _ ≤ ‖z^2‖+‖(1/4 : ℂ)‖ := norm_sub_le _ _
      _ = ‖z‖^2+1/4 := by norm_num [norm_pow]
      _ ≤ _ := by gcongr
  unfold leadingCoefficient coefficientBound
  rw [norm_div,norm_mul,norm_mul,norm_pow,Complex.norm_real,
    Real.norm_eq_abs,abs_of_pos hs]
  norm_num
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt10/Variant45e2be6b1cd8a2fbc684e76298b8156238fe04eb81d57654f60fe61e7dab3d25.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae52dd0d395967da727ee2d35dbede4f5d2449f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
