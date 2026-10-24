# eisSummand_extension_differentiableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e713d9-7192-80f0-64b9-3278404d49c9",
  "kind": "lemma",
  "lexical_name": "eisSummand_extension_differentiableOn",
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
  "slug": "eissummand-extension-differentiableon--f749f8676e53e53027896a45",
  "source": {
    "blob": "b5498a8c937f287b5a5c3f216beabc6087fe7968",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 54,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MDifferentiable/Variantb7277b5cf6d4e58788378ee6a1c2829459bee0fe80205632dc76bf14b3ccfe43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f749f8676e53e53027896a45c88f8fd8133543cc74a403d4dd931994b81665d5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MDifferentiable/Variantb7277b5cf6d4e58788378ee6a1c2829459bee0fe80205632dc76bf14b3ccfe43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e713d9-7192-80f0-64b9-3278404d49c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eisSummand_extension_differentiableOn (k : ℤ) (a : Fin 2 → ℤ) :
    DifferentiableOn ℂ (↑ₕeisSummand k a) {z : ℂ | 0 < z.im} := by
  apply DifferentiableOn.congr (div_linear_zpow_differentiableOn k a)
  intro z hz
  lift z to ℍ using hz
  apply comp_ofComplex

/-- Eisenstein series are MDifferentiable (i.e. holomorphic functions from `ℍ → ℂ`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MDifferentiable/Variantb7277b5cf6d4e58788378ee6a1c2829459bee0fe80205632dc76bf14b3ccfe43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MDifferentiable/Variantb7277b5cf6d4e58788378ee6a1c2829459bee0fe80205632dc76bf14b3ccfe43.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5498a8c937f287b5a5c3f216beabc6087fe7968` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
