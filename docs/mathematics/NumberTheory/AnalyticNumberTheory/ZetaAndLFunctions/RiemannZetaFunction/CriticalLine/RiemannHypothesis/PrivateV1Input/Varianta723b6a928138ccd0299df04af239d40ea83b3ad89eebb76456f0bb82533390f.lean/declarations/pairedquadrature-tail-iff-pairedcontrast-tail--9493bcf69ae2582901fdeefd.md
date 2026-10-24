# pairedQuadrature_tail_iff_pairedContrast_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d54aaa9-fb9a-fcb2-d65c-4b75adf18e35",
  "kind": "theorem",
  "lexical_name": "pairedQuadrature_tail_iff_pairedContrast_tail",
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
  "slug": "pairedquadrature-tail-iff-pairedcontrast-tail--9493bcf69ae2582901fdeefd",
  "source": {
    "blob": "b17cc21bfead270feda2a21397f4b4943167ea64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 143,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Varianta723b6a928138ccd0299df04af239d40ea83b3ad89eebb76456f0bb82533390f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9493bcf69ae2582901fdeefdc71f6a1eca1be6d2bca021a33adb68eccbeae5e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Varianta723b6a928138ccd0299df04af239d40ea83b3ad89eebb76456f0bb82533390f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d54aaa9-fb9a-fcb2-d65c-4b75adf18e35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairedQuadrature_tail_iff_pairedContrast_tail :
    PairedPrimeQuadratureTailLowerBound ↔ PairedContrastTailLowerBound := by
  constructor
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C, hC0, R, hR, ?_⟩
    intro A hRA
    rw [pairedErrorContrast_eq_prime_quadrature (hR.trans hRA)]
    linarith [h A hRA]
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C, hC0, R, hR, ?_⟩
    intro A hRA
    have hc := h A hRA
    rw [pairedErrorContrast_eq_prime_quadrature (hR.trans hRA)] at hc
    linarith

/-- This reaches the unchanged residual frontier conditionally, without proving either tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Varianta723b6a928138ccd0299df04af239d40ea83b3ad89eebb76456f0bb82533390f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Varianta723b6a928138ccd0299df04af239d40ea83b3ad89eebb76456f0bb82533390f.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b17cc21bfead270feda2a21397f4b4943167ea64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
