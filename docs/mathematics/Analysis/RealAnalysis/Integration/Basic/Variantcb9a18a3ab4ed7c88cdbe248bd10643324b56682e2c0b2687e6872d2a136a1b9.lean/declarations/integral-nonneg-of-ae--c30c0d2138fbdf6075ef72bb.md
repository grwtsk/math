# integral_nonneg_of_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:258bbc6b-1c67-98da-612f-4f87da4b5ad8",
  "kind": "lemma",
  "lexical_name": "integral_nonneg_of_ae",
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
  "slug": "integral-nonneg-of-ae--c30c0d2138fbdf6075ef72bb",
  "source": {
    "blob": "231f6160cc10a85ea9f0f54834862b6657c8c993",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 591,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c30c0d2138fbdf6075ef72bb1ba0099b87881a90727fb62deb86645112d382e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258bbc6b-1c67-98da-612f-4f87da4b5ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_nonneg_of_ae {f : α → E} (hf : 0 ≤ᵐ[μ] f) :
    0 ≤ ∫ x, f x ∂μ :=
  integral_eq_setToFun f ▸ setToFun_nonneg (dominatedFinMeasAdditive_weightedSMul μ)
    (fun s _ _ => weightedSMul_nonneg s) hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variantcb9a18a3ab4ed7c88cdbe248bd10643324b56682e2c0b2687e6872d2a136a1b9.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `231f6160cc10a85ea9f0f54834862b6657c8c993` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
