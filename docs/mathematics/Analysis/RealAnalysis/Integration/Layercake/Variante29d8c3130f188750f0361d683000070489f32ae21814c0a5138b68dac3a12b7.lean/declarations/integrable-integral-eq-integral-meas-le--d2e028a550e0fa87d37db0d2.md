# Integrable.integral_eq_integral_meas_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "781f51f2d01d3ebdbb858a6354e53a2dc724d68e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 536,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c986f82b-b133-45a6-003f-859b215c88ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:474f2d8b-5676-ea4a-f4ac-d8b5bb4f9da3",
  "kind": "theorem",
  "lexical_name": "Integrable.integral_eq_integral_meas_le",
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
  "slug": "integrable-integral-eq-integral-meas-le--d2e028a550e0fa87d37db0d2",
  "source": {
    "blob": "781f51f2d01d3ebdbb858a6354e53a2dc724d68e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 536,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2e028a550e0fa87d37db0d2fdcf846cae19857b5785acf4acb30c6480728247",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:474f2d8b-5676-ea4a-f4ac-d8b5bb4f9da3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Integrable.integral_eq_integral_meas_le
    (f_intble : Integrable f μ) (f_nn : 0 ≤ᵐ[μ] f) :
    ∫ ω, f ω ∂μ = ∫ t in Set.Ioi 0, μ.real {a : α | t ≤ f a} := by
  rw [Integrable.integral_eq_integral_meas_lt f_intble f_nn]
  apply integral_congr_ae
  filter_upwards [meas_le_ae_eq_meas_lt μ (volume.restrict (Ioi 0)) f] with t ht
  exact congrArg ENNReal.toReal ht.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Layercake/Variante29d8c3130f188750f0361d683000070489f32ae21814c0a5138b68dac3a12b7.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781f51f2d01d3ebdbb858a6354e53a2dc724d68e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
