# cell_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7340543-518a-df92-d2ce-d708ca23796a",
  "kind": "theorem",
  "lexical_name": "cell_integral",
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
  "slug": "cell-integral--12220e52dbdda87fd55cb51b",
  "source": {
    "blob": "1d548d1814c1bf8b9cb6b8ef19adeee812522506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 118,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12220e52dbdda87fd55cb51bc13fc950e97517ca6aa7cf470284369682778cb9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7340543-518a-df92-d2ce-d708ca23796a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cell_integral (U M : ℕ) :
    (∫ x in (M : ℝ)..((M : ℝ) + 1), actualPhysicalPeriodicDensity U x) =
      actualSignedPeriodicPrimitive U (M + 1) - actualSignedPeriodicPrimitive U M := by
  have hae : ∀ᵐ x : ℝ, x ≠ (M : ℝ) + 1 := by simp [ae_iff]
  have he : (∫ x in (M : ℝ)..((M : ℝ) + 1), actualPhysicalPeriodicDensity U x) =
      ∫ _x in (M : ℝ)..((M : ℝ) + 1), actualPhysicalPeriodicDensity U (M : ℝ) := by
    apply intervalIntegral.integral_congr_ae
    rw [uIoc_of_le (by linarith)]
    filter_upwards [hae] with x hne hx
    exact density_on_cell U M ⟨hx.1.le, lt_of_le_of_ne hx.2 hne⟩
  rw [he, intervalIntegral.integral_const]
  simp only [add_sub_cancel_left, one_smul, actualPhysicalPeriodicDensity_at_integer]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant23b32ae3b0d7a561e9fd11fbb9f467ab12a7373790024e095107f361fc2e98c6.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d548d1814c1bf8b9cb6b8ef19adeee812522506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
