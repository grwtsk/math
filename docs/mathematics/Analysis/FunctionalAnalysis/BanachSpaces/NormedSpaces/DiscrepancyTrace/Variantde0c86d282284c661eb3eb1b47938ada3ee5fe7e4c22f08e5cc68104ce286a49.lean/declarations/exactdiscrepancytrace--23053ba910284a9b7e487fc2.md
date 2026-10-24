# ExactDiscrepancyTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:87dfd011db4847091a5553f9089149360b20b715dbaa92d90ec4d5dae89e1f4b",
  "kind": "structure",
  "lexical_name": "ExactDiscrepancyTrace",
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
  "slug": "exactdiscrepancytrace--23053ba910284a9b7e487fc2",
  "source": {
    "blob": "b139de789c489fa15dd0881594b1c165e6988423",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 57,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23053ba910284a9b7e487fc24a615377457b69733d88dd3e109d78839064bf6a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:87dfd011db4847091a5553f9089149360b20b715dbaa92d90ec4d5dae89e1f4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactDiscrepancyTrace
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier] where
  arithmeticSource :
    Mathematics.Prismatic.ArithmeticEnhancement.{u}
  kind : TraceFormulaKind
  authority : TraceFormulaAuthority arithmeticSource kind
  discrepancy : Scale → Carrier
  invariantProjection : InvariantProjection Carrier
  spectralTerm : Scale → Spectrum → Carrier
  remainder : Scale → Carrier
  exact :
    ∀ scale,
      discrepancy scale =
        invariantProjection.project (discrepancy scale) +
          ((∑ spectral : Spectrum, spectralTerm scale spectral) +
            remainder scale)

namespace ExactDiscrepancyTrace

variable {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
  [Fintype Spectrum] [NormedAddCommGroup Carrier]

/-- The projected invariant contribution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/DiscrepancyTrace/Variantde0c86d282284c661eb3eb1b47938ada3ee5fe7e4c22f08e5cc68104ce286a49.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b139de789c489fa15dd0881594b1c165e6988423` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
