# native_rational_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18097dcd-38c2-95f3-2fcc-6732bb16ec44",
  "kind": "theorem",
  "lexical_name": "native_rational_integrable",
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
  "slug": "native-rational-integrable--167dd900dc9b141a7c592b56",
  "source": {
    "blob": "2e96c47bf986d5089c88c2674c92ef080136d77b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:167dd900dc9b141a7c592b568f5abfc81637af70eb1fc426b0c6d0698ef780ed",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18097dcd-38c2-95f3-2fcc-6732bb16ec44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_rational_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun t : ℝ ↦ nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
      (1 + Complex.I * (t : ℂ))) := by
  have hc : Continuous (fun t : ℝ ↦ (1 : ℂ) / (1 + Complex.I * (t : ℂ))) :=
    continuous_const.div (by fun_prop) denominator_ne_zero
  have h := (nativeMellin_two_integrable A hA).mul_bdd hc.aestronglyMeasurable
    (Filter.Eventually.of_forall rationalKernel_norm_le_one)
  convert h using 1
  funext t
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceRationalCompensation/Variante46a0031d0ee1eb393369f16a913e52906c81b2004bb31cec251fe6cef23fdc7.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e96c47bf986d5089c88c2674c92ef080136d77b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
