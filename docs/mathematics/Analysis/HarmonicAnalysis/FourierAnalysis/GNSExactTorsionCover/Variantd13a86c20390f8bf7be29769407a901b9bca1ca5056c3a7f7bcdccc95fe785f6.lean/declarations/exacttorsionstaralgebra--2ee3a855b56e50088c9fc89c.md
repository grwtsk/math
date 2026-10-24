# ExactTorsionStarAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d4c79dc6eba3d9f11a9f98e699051a9c8b9f70411a3ee469c4acbd3d2f13fdc",
  "kind": "structure",
  "lexical_name": "ExactTorsionStarAlgebra",
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
  "slug": "exacttorsionstaralgebra--2ee3a855b56e50088c9fc89c",
  "source": {
    "blob": "50ac3365ae97226e58065b5f78f9260f1f208768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 29,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ee3a855b56e50088c9fc89c12d6476a8980919eb6c99a45064170418602d41a",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d4c79dc6eba3d9f11a9f98e699051a9c8b9f70411a3ee469c4acbd3d2f13fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactTorsionStarAlgebra where
  Carrier : Type
  star : Carrier → Carrier
  mul : Carrier → Carrier → Carrier
  fourier : Carrier → Carrier
  exactScatteringGenerated : Bool
  fourierPreservesStar : ∀ A : Carrier, star (fourier A) = fourier (star A)

/-- Positive exact-torsion state.  `Scalar` is abstract here; positivity is
recorded as a gate because the repo has not imported a full ordered complex
state API for this surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variantd13a86c20390f8bf7be29769407a901b9bca1ca5056c3a7f7bcdccc95fe785f6.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50ac3365ae97226e58065b5f78f9260f1f208768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
