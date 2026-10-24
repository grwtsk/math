# OperatorPurityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:191c7acf79b9482b1ec8d8786273c15ebdfffaf20f6643fcfbdf2e5dc041c69f",
  "kind": "structure",
  "lexical_name": "OperatorPurityCertificate",
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
  "slug": "operatorpuritycertificate--a71226d23af0895017e7c0f2",
  "source": {
    "blob": "b39a82dbcb3c95ee7cb349b715efdd4ce3812c55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 14,
    "path": "GRWTSK/Algebra/LinearAlgebra/OperatorPurity/Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a71226d23af0895017e7c0f241848e51fb43d7e1606933de2e2dd6375ea976aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/OperatorPurity/Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:191c7acf79b9482b1ec8d8786273c15ebdfffaf20f6643fcfbdf2e5dc041c69f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OperatorPurityCertificate
    {system : RandomBitfieldSystem}
    (spectral : BitfieldSpectralOperator system) where
  eigenvalue :
    Bitfield system.bits →
      Fin spectral.dim →
      ℝ
  diagonalizer :
    Bitfield system.bits →
      Matrix (Fin spectral.dim) (Fin spectral.dim) ℂ
  diagonalizerUnitary :
    ∀ state,
      (diagonalizer state)ᴴ * diagonalizer state = 1
  diagonalizes :
    ∀ state,
      (diagonalizer state)ᴴ *
          spectral.operator state *
          diagonalizer state =
        Matrix.diagonal
          (fun index =>
            (eigenvalue state index : ℂ))
  spectralParameterMap :
    Bitfield system.bits →
      Fin spectral.dim →
      ℂ
  spectralParameterMap_eq :
    ∀ state index,
      spectralParameterMap state index =
        spectralParameter (eigenvalue state index)
  criticalLine :
    ∀ state index,
      (spectralParameterMap state index).re =
        (1 : ℝ) / 2
  jordanOrder :
    Bitfield system.bits →
      Fin spectral.dim →
      Nat
  jordanOrderZero :
    ∀ state index,
      jordanOrder state index = 0
  testTransformUniformlyControlled : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/OperatorPurity/Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/OperatorPurity/Variant9449fbbca5ba4c4ba90a14ec7659214948cabe81dcb297167188c6047dd518d5.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39a82dbcb3c95ee7cb349b715efdd4ce3812c55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
