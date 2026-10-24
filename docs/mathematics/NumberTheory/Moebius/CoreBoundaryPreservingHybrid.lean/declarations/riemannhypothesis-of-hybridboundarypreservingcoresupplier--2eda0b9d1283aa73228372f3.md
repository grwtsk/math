# riemannHypothesis_of_hybridBoundaryPreservingCoreSupplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76e94f6f-5d86-60e5-cc8b-1e3660dc06d1",
  "kind": "theorem",
  "lexical_name": "riemannHypothesis_of_hybridBoundaryPreservingCoreSupplier",
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
  "slug": "riemannhypothesis-of-hybridboundarypreservingcoresupplier--2eda0b9d1283aa73228372f3",
  "source": {
    "blob": "e5644ce1b421bbbe1308d5ea7b62710c1a7633b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 184,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eda0b9d1283aa73228372f3b1762b8af62b55cfaccb371cc12cacb1e70e6462",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76e94f6f-5d86-60e5-cc8b-1e3660dc06d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem riemannHypothesis_of_hybridBoundaryPreservingCoreSupplier
    (hHybrid : HybridBoundaryPreservingCoreSupplier) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCoreLongDeepRemainderPacket
    (subpolynomialCoreLongDeepRemainderPacket_of_hybridBoundary hHybrid)

/-- Abstract two-start witness: a signed weighted sum can vanish while the
corresponding L1 quantity is strictly positive.  This records information loss
from the start-point triangle inequality without making a claim about actual
Möbius values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryPreservingHybrid.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5644ce1b421bbbe1308d5ea7b62710c1a7633b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
