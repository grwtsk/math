# estimate_of_raw_quadratic_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bfac855-c40e-78ac-a63a-d9dea25facd7",
  "kind": "theorem",
  "lexical_name": "estimate_of_raw_quadratic_tail",
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
  "slug": "estimate-of-raw-quadratic-tail--6bec9d37ecd6e92d7bffd7ec",
  "source": {
    "blob": "e9b41e87fad1373ae58cca821b6511804f2c4b63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 278,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bec9d37ecd6e92d7bffd7ec5c363c9ca5164e7e4bb966b26added6ea929f85a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bfac855-c40e-78ac-a63a-d9dea25facd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_raw_quadratic_tail (h : RawQuadraticTailCertificate) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨R, B, u, v, c, e, hR, hcert⟩ := h
  apply estimate_of_native_raw_certificates
    (fun A j => quadraticPotential (u A j) (v A j) (c A j)) e R B hR
  · intro A hRA
    exact raw_quadratic_local_certificate A (u A) (v A) (c A) (e A) (hcert A hRA).1
  · intro A hRA
    exact (hcert A hRA).2

end FormalResearch.RiemannHypothesis.SourceKapitzaRawCellJoin
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaRawCellJoin/Variant0defffb7452507b119f7297d89cf51d643630a14aa992b7f47c49eb805f3c20d.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9b41e87fad1373ae58cca821b6511804f2c4b63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
