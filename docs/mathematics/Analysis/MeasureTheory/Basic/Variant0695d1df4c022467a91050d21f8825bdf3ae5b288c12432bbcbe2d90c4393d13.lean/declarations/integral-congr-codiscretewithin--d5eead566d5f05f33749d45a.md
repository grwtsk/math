# integral_congr_codiscreteWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d4712b4-2ab5-ebf6-fee6-885084a1d1a7",
  "kind": "theorem",
  "lexical_name": "integral_congr_codiscreteWithin",
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
  "slug": "integral-congr-codiscretewithin--d5eead566d5f05f33749d45a",
  "source": {
    "blob": "5e4f728d6af658326b073506faee0f72ff0c7494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1277,
    "line": 1273,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5eead566d5f05f33749d45a64381cb7c2830f8e127c5f3548f5927e77faeb3b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d4712b4-2ab5-ebf6-fee6-885084a1d1a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1273–1277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_congr_codiscreteWithin {a b : ℝ} {f₁ f₂ : ℝ → ℝ}
    (hf : f₁ =ᶠ[codiscreteWithin (Ι a b)] f₂) :
    ∫ (x : ℝ) in a..b, f₁ x = ∫ (x : ℝ) in a..b, f₂ x :=
  integral_congr_ae_restrict (ae_restrict_le_codiscreteWithin measurableSet_uIoc hf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant0695d1df4c022467a91050d21f8825bdf3ae5b288c12432bbcbe2d90c4393d13.lean#L1273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4f728d6af658326b073506faee0f72ff0c7494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
