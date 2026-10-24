# Hilbert.TraceFormulaTheoremCertificate.certifiedForMajorProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ea895a7cd6a8f7654ec4a80c87f1a077671a32b9396477e5aa8d2bff2bfdd44",
  "kind": "def",
  "lexical_name": "Hilbert.TraceFormulaTheoremCertificate.certifiedForMajorProof",
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
  "slug": "hilbert-traceformulatheoremcertificate-certifiedformajorproof--09c2a5e2b97478d9a9dc8bfb",
  "source": {
    "blob": "1c402b9178383dc516ea6f6cde8aceabe1e1fd98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 210,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09c2a5e2b97478d9a9dc8bfb810285aacf0f3c8b50b77719be08785f7321ea5c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ea895a7cd6a8f7654ec4a80c87f1a077671a32b9396477e5aa8d2bff2bfdd44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Hilbert.TraceFormulaTheoremCertificate.certifiedForMajorProof
    {C : Hilbert.TraceFormulaCore.{u, v}}
    (T : Hilbert.TraceFormulaTheoremCertificate C) :
    Prop :=
  C.traceSide.ready ∧
  C.spectralSide.ready ∧
  C.geometricSide.ready ∧
  T.selfAdjoint.selfAdjoint ∧
  T.traceClass.traceClass ∧
  T.spectralMeasure.projectionValued ∧
  T.spectralTheorem.theoremApplies ∧
  T.spectralTheorem.selfAdjoint = T.selfAdjoint ∧
  T.spectralTheorem.spectralMeasure = T.spectralMeasure ∧
  C.selfAdjoint? = some T.selfAdjoint ∧
  C.traceClass? = some T.traceClass ∧
  C.spectralMeasure? = some T.spectralMeasure ∧
  C.spectralTheorem? = some T.spectralTheorem ∧
  C.sidesShareNormalization ∧
  C.sidesReferToOperator

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TraceFormula/Variantebdc0ae1d0b6cfb79212eb83959a4074d0d179c720f64b792440afc27ca41fa3.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c402b9178383dc516ea6f6cde8aceabe1e1fd98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
