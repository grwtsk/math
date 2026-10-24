# Hilbert.TraceFormulaCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2dba937ae020aa159e4b92426fdef45dae8ea5e865c49680c0dc3ba04e7e253",
  "kind": "structure",
  "lexical_name": "Hilbert.TraceFormulaCore",
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
  "slug": "hilbert-traceformulacore--2cfec64e0b26169c519e7ec7",
  "source": {
    "blob": "025daddd628d8eec13a0ca5a33aba2752142a220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 112,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2cfec64e0b26169c519e7ec7c4c8252fd9abe8c18b1e42237cbbf261d7314ee5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2dba937ae020aa159e4b92426fdef45dae8ea5e865c49680c0dc3ba04e7e253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Hilbert.TraceFormulaCore where
  H : Hilbert.Space.{u, v}
  operator : Hilbert.LinearOperator H H
  traceSide : Hilbert.TraceFormulaSide
  spectralSide : Hilbert.TraceFormulaSide
  geometricSide : Hilbert.TraceFormulaSide
  selfAdjoint? : Option (Hilbert.SelfAdjointCertificate operator)
  traceClass? : Option (Hilbert.TraceClassCertificate operator)
  spectralMeasure? : Option (Hilbert.SpectralMeasure operator)
  spectralTheorem? : Option (Hilbert.SpectralTheoremCertificate operator)
  sidesShareNormalization : Prop
  sidesReferToOperator : Prop
  boundary : List String

/--
A trace-formula core is ready only when all three sides carry certificates and
all four analytic option gates are populated.  Readiness is a dashboard fact;
it is not proof authority for any trace identity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantd9aa50a04812e36ab7a4f173ebb8e53b24b4747b409c64def26eb4c098d4157b.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025daddd628d8eec13a0ca5a33aba2752142a220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
