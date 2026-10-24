# fixedOverlapPolynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6871d0588bad779647f63f8dc4a1aac7ec79ef643d141e06020692ba1378e78a",
  "kind": "def",
  "lexical_name": "fixedOverlapPolynomial",
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
  "slug": "fixedoverlappolynomial--5d07f64e6503b75a65a3d2ac",
  "source": {
    "blob": "7510c241007f0d14ac7a0ad27e6c9fb14b2dbaf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d07f64e6503b75a65a3d2acf2a99c766d66f2a5cf9e00b1c670d4a03fecf4d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6871d0588bad779647f63f8dc4a1aac7ec79ef643d141e06020692ba1378e78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def fixedOverlapPolynomial : ℝ[X] :=
  Polynomial.monomial 0 (65536 / 109395) -
    Polynomial.monomial 2 (16384 / 1126125) +
    Polynomial.monomial 4 (512 / 3128125) -
    Polynomial.monomial 6 (64 / 54140625) +
    Polynomial.monomial 8 (1 / 123046875) -
    Polynomial.monomial 9 (1 / 2460937500) +
    Polynomial.monomial 11 (1 / 2707031250000) -
    Polynomial.monomial 13 (1 / 3128125000000000) +
    Polynomial.monomial 15 (1 / 5630625000000000000) -
    Polynomial.monomial 17 (1 / 21879000000000000000000)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualHighLagMixedSign/Variante39a2110ec5872380586be8fc6f66abd805cd3dd812b044e7f38ae5fc9228d82.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7510c241007f0d14ac7a0ad27e6c9fb14b2dbaf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
