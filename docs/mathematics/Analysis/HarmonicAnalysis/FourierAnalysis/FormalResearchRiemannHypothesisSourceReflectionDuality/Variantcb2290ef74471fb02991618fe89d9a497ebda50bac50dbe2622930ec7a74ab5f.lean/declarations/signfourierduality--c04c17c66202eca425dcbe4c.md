# signFourierDuality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff3b9cbd0e59d132d27145d73d44ff673fe43c5f92a2051d3a7076690972d770",
  "kind": "def",
  "lexical_name": "signFourierDuality",
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
  "slug": "signfourierduality--c04c17c66202eca425dcbe4c",
  "source": {
    "blob": "db9d3c100efa65ca2ae8e801c34e328e6714f4f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 189,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c04c17c66202eca425dcbe4c73b482be27f68c6e0afdc7813bcf8ffc6c85e812",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff3b9cbd0e59d132d27145d73d44ff673fe43c5f92a2051d3a7076690972d770`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def signFourierDuality : ComplexL2 ≃ₗᵢ[ℂ] ComplexL2 :=
  ((Lp.fourierTransformₗᵢ ℝ ℂ).trans signMultiplier).trans (Lp.fourierTransformₗᵢ ℝ ℂ).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db9d3c100efa65ca2ae8e801c34e328e6714f4f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
