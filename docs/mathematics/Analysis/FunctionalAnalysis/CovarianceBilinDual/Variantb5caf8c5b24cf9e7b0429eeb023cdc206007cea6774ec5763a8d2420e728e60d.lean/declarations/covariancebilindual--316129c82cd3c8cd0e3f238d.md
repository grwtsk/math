# covarianceBilinDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb31cd6fac626aeeb64d26ea4a576e806f7cad2ff8c2da7d7e922c0bbaa8c9b0",
  "kind": "def",
  "lexical_name": "covarianceBilinDual",
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
  "slug": "covariancebilindual--316129c82cd3c8cd0e3f238d",
  "source": {
    "blob": "91229d07915567158654b983bea309a79386b950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 243,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:316129c82cd3c8cd0e3f238d6801a137ba7ac8ebff1175cc2229a0493c6ea2b1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb31cd6fac626aeeb64d26ea4a576e806f7cad2ff8c2da7d7e922c0bbaa8c9b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def covarianceBilinDual (μ : Measure E) : StrongDual ℝ E →L[ℝ] StrongDual ℝ E →L[ℝ] ℝ :=
  uncenteredCovarianceBilinDual (μ.map (fun x ↦ x - ∫ x, x ∂μ))

omit [BorelSpace E] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CovarianceBilinDual/Variantb5caf8c5b24cf9e7b0429eeb023cdc206007cea6774ec5763a8d2420e728e60d.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91229d07915567158654b983bea309a79386b950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
