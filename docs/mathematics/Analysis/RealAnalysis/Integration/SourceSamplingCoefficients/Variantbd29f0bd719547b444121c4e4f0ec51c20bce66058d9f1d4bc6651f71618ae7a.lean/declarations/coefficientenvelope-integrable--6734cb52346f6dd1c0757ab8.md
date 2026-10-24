# coefficientEnvelope_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f66f2f4053336c22c8fdc7cc3106f6b3ede1bc7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eb4372d-0a40-527e-e266-9b521cdfbfc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f000a491-adec-bf68-fea1-1ab619bdc90d",
  "kind": "theorem",
  "lexical_name": "coefficientEnvelope_integrable",
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
  "slug": "coefficientenvelope-integrable--6734cb52346f6dd1c0757ab8",
  "source": {
    "blob": "7f66f2f4053336c22c8fdc7cc3106f6b3ede1bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6734cb52346f6dd1c0757ab87deaf69fb47b1cb357607c1badd783cc3b367617",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f000a491-adec-bf68-fea1-1ab619bdc90d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientEnvelope_integrable (j : ℕ) :
    IntegrableOn (coefficientEnvelope j) (Ioi 0) := by
  have h := integrableOn_image_iff_integrableOn_abs_deriv_smul
    (f := Real.exp) (f' := Real.exp) MeasurableSet.univ
    (fun v _ => (Real.hasDerivAt_exp v).hasDerivWithinAt)
    Real.exp_injective.injOn (coefficientEnvelope j)
  rw [Set.image_univ, Real.range_exp] at h
  apply h.mpr
  simp only [abs_of_pos (Real.exp_pos _), smul_eq_mul]
  simpa only [coefficientEnvelope_exp, integrableOn_univ] using even_exponential_integrable j

/-- The exact positive-axis envelope integral is the factorial budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingCoefficients/Variantbd29f0bd719547b444121c4e4f0ec51c20bce66058d9f1d4bc6651f71618ae7a.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f66f2f4053336c22c8fdc7cc3106f6b3ede1bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
