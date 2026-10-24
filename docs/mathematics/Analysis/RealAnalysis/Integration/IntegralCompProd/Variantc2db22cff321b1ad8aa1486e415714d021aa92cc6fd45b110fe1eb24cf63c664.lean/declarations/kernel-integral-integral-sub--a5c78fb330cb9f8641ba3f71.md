# kernel.integral_integral_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f4aa7ce-ebb3-32ca-6460-75ab55f28cfa",
  "kind": "theorem",
  "lexical_name": "kernel.integral_integral_sub",
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
  "slug": "kernel-integral-integral-sub--a5c78fb330cb9f8641ba3f71",
  "source": {
    "blob": "48e575a8f62b187b4d36b125b47b08b6016f7709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 209,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5c78fb330cb9f8641ba3f7192f5cc3962370f677bb17391307da07d9f786666",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f4aa7ce-ebb3-32ca-6460-75ab55f28cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel.integral_integral_sub ⦃f g : β × γ → E⦄ (hf : Integrable f ((κ ⊗ₖ η) a))
    (hg : Integrable g ((κ ⊗ₖ η) a)) :
    ∫ x, ∫ y, f (x, y) - g (x, y) ∂η (a, x) ∂κ a =
      ∫ x, ∫ y, f (x, y) ∂η (a, x) ∂κ a - ∫ x, ∫ y, g (x, y) ∂η (a, x) ∂κ a :=
  (kernel.integral_fn_integral_sub id hf hg).trans <|
    integral_sub hf.integral_compProd hg.integral_compProd
#align probability_theory.kernel.integral_integral_sub ProbabilityTheory.kernel.integral_integral_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralCompProd/Variantc2db22cff321b1ad8aa1486e415714d021aa92cc6fd45b110fe1eb24cf63c664.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48e575a8f62b187b4d36b125b47b08b6016f7709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
