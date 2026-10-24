# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dab25d61d3442d9f1dfa8d95d8bc2c4b104209cf7f27f442332255aa35178ddc",
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
  "slug": "example--beb7923512628cd00caba039",
  "source": {
    "blob": "0101203619d68764c1085d0d07743503580fce2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 22,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateVaughanTranslationGate/Variant05c59b0108f4fe2c2aa08cadf63835b81bf5a8325f7cf30898e1491db6ef255c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:beb7923512628cd00caba0392e917af0716125c2269199763dde8af7f450b101",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/RhEstimateVaughanTranslationGate/Variant05c59b0108f4fe2c2aa08cadf63835b81bf5a8325f7cf30898e1491db6ef255c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dab25d61d3442d9f1dfa8d95d8bc2c4b104209cf7f27f442332255aa35178ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = coupledOffDiagonalRemainder A :=
  mertensResidual_eq_coupledOffDiagonalRemainder A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/RhEstimateVaughanTranslationGate/Variant05c59b0108f4fe2c2aa08cadf63835b81bf5a8325f7cf30898e1491db6ef255c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/RhEstimateVaughanTranslationGate/Variant05c59b0108f4fe2c2aa08cadf63835b81bf5a8325f7cf30898e1491db6ef255c.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0101203619d68764c1085d0d07743503580fce2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
