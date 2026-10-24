# lintegral_eapprox_le_lintegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00dc803e-6333-0dac-b472-aff7f70620e8",
  "kind": "lemma",
  "lexical_name": "lintegral_eapprox_le_lintegral",
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
  "slug": "lintegral-eapprox-le-lintegral--64568c7a8e3a489b42cf6d1e",
  "source": {
    "blob": "27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64568c7a8e3a489b42cf6d1edc4c64658aae85f54022f1322d6a23c1d79dc2c6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00dc803e-6333-0dac-b472-aff7f70620e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lintegral_eapprox_le_lintegral {f : α → ℝ≥0∞} (hf : Measurable f) (n : ℕ) :
    (eapprox f n).lintegral μ ≤ ∫⁻ x, f x ∂μ := by
  rw [lintegral_eq_iSup_eapprox_lintegral hf]
  exact le_iSup (fun n ↦ (eapprox f n).lintegral μ) n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Add/Variantf40f2d172f84a2c9d4f864b32637cb38926e1f56ce2745f7d7ea261e743e037d.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27cbbc11f6a2ea41bbb1db79ef0f4b1796f03a4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
