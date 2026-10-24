# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4a011f380ed2c2b269c9cd17e3ffaf5f6a55f1e0acc4305a98457b40449d6718",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f33ad9f7af5253fe5c04f8df",
  "source": {
    "blob": "dec2b78bcae04cfe4a73e068e1831756b3a72824",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1225,
    "line": 1215,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant247d95e6281ecfae83783c5d1e951c3525204570dfd07c13dfec5de10e5cfd45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f33ad9f7af5253fe5c04f8dfe2f131a7f4a0c98c509f005d5d13174da6d33665",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant247d95e6281ecfae83783c5d1e951c3525204570dfd07c13dfec5de10e5cfd45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4a011f380ed2c2b269c9cd17e3ffaf5f6a55f1e0acc4305a98457b40449d6718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1215–1225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a e : ℕ → ℝ) (δ C : ℝ) :
    |(∑ g ∈ Icc 1 0, a g * e g) - δ * (∑ g ∈ Icc 1 0, e g)| =
      C * (Real.sqrt (0 : ℝ) * |e 0| +
        ∑ j ∈ Icc 1 (0 - 1 : ℕ), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) :=
  FiniteAbelVariation.weighted_error_zero a e δ C
end FiniteAbelVariationStatements

-- The actual class transport uses one fixed finite density and retains the external Möbius sign.
section RatioClassVariationStatements
open Finset RatioClassVariation PrimeSupportedBlock

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant247d95e6281ecfae83783c5d1e951c3525204570dfd07c13dfec5de10e5cfd45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant247d95e6281ecfae83783c5d1e951c3525204570dfd07c13dfec5de10e5cfd45.lean#L1215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dec2b78bcae04cfe4a73e068e1831756b3a72824` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
