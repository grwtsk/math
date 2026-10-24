# smoothLocus_eq_compl_support_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01e28ec4-399b-d21f-0234-474c2108fdf5",
  "kind": "lemma",
  "lexical_name": "smoothLocus_eq_compl_support_inter",
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
  "slug": "smoothlocus-eq-compl-support-inter--f5ade0493f3139f731262ab2",
  "source": {
    "blob": "ec646f89da94c96425acc30357c160f66223de1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 60,
    "path": "GRWTSK/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5ade0493f3139f731262ab2191dc3953c2bbbf31860008a552c4904840cec48",
  "verification": {
    "reference": "docs/verification/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01e28ec4-399b-d21f-0234-474c2108fdf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smoothLocus_eq_compl_support_inter [EssFiniteType R A] :
    smoothLocus R A = (Module.support A (H1Cotangent R A))ᶜ ∩ Module.freeLocus A (Ω[A⁄R]) := by
  ext p
  simp only [Set.mem_inter_iff, Set.mem_compl_iff, Module.notMem_support_iff,
    Module.mem_freeLocus]
  refine Algebra.FormallySmooth.iff_subsingleton_and_projective.trans ?_
  congr! 1
  · have := IsLocalizedModule.iso p.asIdeal.primeCompl
      (H1Cotangent.map R R A (Localization.AtPrime p.asIdeal))
    exact this.subsingleton_congr.symm
  · trans Module.Free (Localization.AtPrime p.asIdeal) (Ω[Localization.AtPrime p.asIdeal⁄R])
    · have : EssFiniteType A (Localization.AtPrime p.asIdeal) :=
        .of_isLocalization _ p.asIdeal.primeCompl
      have : EssFiniteType R (Localization.AtPrime p.asIdeal) := .comp _ A _
      exact ⟨fun _ ↦ Module.free_of_flat_of_isLocalRing, fun _ ↦ inferInstance⟩
    · have := IsLocalizedModule.iso p.asIdeal.primeCompl
        (KaehlerDifferential.map R R A (Localization.AtPrime p.asIdeal))
      have := this.extendScalarsOfIsLocalization
        p.asIdeal.primeCompl (Localization.AtPrime p.asIdeal)
      exact ⟨fun H ↦ H.of_equiv' this.symm, fun H ↦ H.of_equiv' this⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Locus/Variant7133c143d0246f0b1abb2a12bb8308c691023ac760b65d546086c785f78683a6.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec646f89da94c96425acc30357c160f66223de1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
