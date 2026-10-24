# kroneckerHilbertBasis_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40ee8efc-661b-8ef2-5c74-73c211510b5c",
  "kind": "theorem",
  "lexical_name": "kroneckerHilbertBasis_apply",
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
  "slug": "kroneckerhilbertbasis-apply--452e1a894b41298b2d6071b8",
  "source": {
    "blob": "66465baf363daa59dff2b3e20952e6e2fc6f5eed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 119,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:452e1a894b41298b2d6071b836d136b70c64f203be8046a2af3199156b684ab3",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40ee8efc-661b-8ef2-5c74-73c211510b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kroneckerHilbertBasis_apply (index : Index) :
    kroneckerHilbertBasis (Index := Index) index =
      rhetoricalVector (kroneckerKernel (Index := Index)) index := by
  rw [kroneckerHilbertBasis, HilbertBasis.coe_mk]

/-- Kernel-checked compatibility bridge from the completed unit Kronecker
profile to ordinary `ℓ²(Index, ℂ)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66465baf363daa59dff2b3e20952e6e2fc6f5eed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
