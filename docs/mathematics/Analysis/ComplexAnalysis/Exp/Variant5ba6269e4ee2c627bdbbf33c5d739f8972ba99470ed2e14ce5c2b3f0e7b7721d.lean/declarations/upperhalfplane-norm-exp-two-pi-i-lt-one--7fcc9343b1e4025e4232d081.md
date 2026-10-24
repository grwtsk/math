# UpperHalfPlane.norm_exp_two_pi_I_lt_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa9e0bcd-1979-0a47-6270-0c5c6c7f60a0",
  "kind": "theorem",
  "lexical_name": "UpperHalfPlane.norm_exp_two_pi_I_lt_one",
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
  "slug": "upperhalfplane-norm-exp-two-pi-i-lt-one--7fcc9343b1e4025e4232d081",
  "source": {
    "blob": "9ea22ffd81427c2e81b0aa67c28a1e08c06165e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fcc9343b1e4025e4232d081902606ccc56a44951891724b6ddad48ed81a936c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa9e0bcd-1979-0a47-6270-0c5c6c7f60a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem UpperHalfPlane.norm_exp_two_pi_I_lt_one (τ : ℍ) :
    ‖(Complex.exp (2 * π * Complex.I * τ))‖ < 1 := by
  simpa [Function.Periodic.norm_qParam, Complex.norm_exp] using τ.norm_qParam_lt_one 1

@[deprecated (since := "2025-02-17")] alias Function.Periodic.im_invQParam_pos_of_abs_lt_one :=
  Function.Periodic.im_invQParam_pos_of_norm_lt_one
@[deprecated (since := "2025-02-17")] alias Function.Periodic.abs_qParam_le_of_one_half_le_im :=
  Function.Periodic.norm_qParam_le_of_one_half_le_im
@[deprecated (since := "2025-02-17")] alias UpperHalfPlane.abs_qParam_lt_one :=
  UpperHalfPlane.norm_qParam_lt_one
@[deprecated (since := "2025-02-17")] alias UpperHalfPlane.abs_exp_two_pi_I_lt_one :=
  UpperHalfPlane.norm_exp_two_pi_I_lt_one
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Exp/Variant5ba6269e4ee2c627bdbbf33c5d739f8972ba99470ed2e14ce5c2b3f0e7b7721d.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea22ffd81427c2e81b0aa67c28a1e08c06165e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
