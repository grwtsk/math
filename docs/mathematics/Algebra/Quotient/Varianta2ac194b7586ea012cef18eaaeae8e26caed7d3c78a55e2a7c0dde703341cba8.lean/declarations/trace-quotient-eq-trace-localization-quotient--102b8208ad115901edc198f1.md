# trace_quotient_eq_trace_localization_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:261d6b54-2129-7759-6666-b79e20c1d1d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:899375fa-2c6c-b4cc-7c48-2ce2bd9755e4",
  "kind": "lemma",
  "lexical_name": "trace_quotient_eq_trace_localization_quotient",
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
  "slug": "trace-quotient-eq-trace-localization-quotient--102b8208ad115901edc198f1",
  "source": {
    "blob": "54bb340675a08f2a95a6f566b0ef31d11175e188",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 168,
    "path": "GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:102b8208ad115901edc198f1f934a8f42cfc8eb5b1f6aabdd02887a1624b93cf",
  "verification": {
    "reference": "docs/verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:899375fa-2c6c-b4cc-7c48-2ce2bd9755e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma trace_quotient_eq_trace_localization_quotient (x) :
    Algebra.trace (R ⧸ p) (S ⧸ pS) (Ideal.Quotient.mk pS x) =
      (equivQuotMaximalIdealOfIsLocalization p Rₚ).symm
        (Algebra.trace (Rₚ ⧸ maximalIdeal Rₚ) (Sₚ ⧸ pSₚ) (algebraMap S _ x)) := by
  have : IsScalarTower R (Rₚ ⧸ maximalIdeal Rₚ) (Sₚ ⧸ pSₚ) := by
    apply IsScalarTower.of_algebraMap_eq'
    rw [IsScalarTower.algebraMap_eq R Rₚ (Rₚ ⧸ _), IsScalarTower.algebraMap_eq R Rₚ (Sₚ ⧸ _),
      ← RingHom.comp_assoc, ← IsScalarTower.algebraMap_eq Rₚ]
  rw [Algebra.trace_eq_of_equiv_equiv (equivQuotMaximalIdealOfIsLocalization p Rₚ)
    (quotMapEquivQuotMapMaximalIdealOfIsLocalization S p Rₚ Sₚ)]
  · congr
  · ext x
    simp only [equivQuotMaximalIdealOfIsLocalization, RingHom.quotientKerEquivOfSurjective,
      RingEquiv.coe_ringHom_trans, RingHom.coe_comp, RingHom.coe_coe, Function.comp_apply,
      Ideal.quotEquivOfEq_mk, RingHom.quotientKerEquivOfRightInverse.apply, RingHom.kerLift_mk,
      quotMapEquivQuotMapMaximalIdealOfIsLocalization,
      Ideal.Quotient.algebraMap_quotient_map_quotient]
    rw [← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply]

open nonZeroDivisors in
/-- The trace map on `B → A` coincides with the trace map on `B⧸pB → A⧸p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quotient/Varianta2ac194b7586ea012cef18eaaeae8e26caed7d3c78a55e2a7c0dde703341cba8.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54bb340675a08f2a95a6f566b0ef31d11175e188` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
