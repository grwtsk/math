# exampleCurveZetaFormulaSurface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b055b262d6be6297ebec31da81e886d70a9db93f4621b2bf9c6175fe663315d",
  "kind": "def",
  "lexical_name": "exampleCurveZetaFormulaSurface",
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
  "slug": "examplecurvezetaformulasurface--faa3624ece62bc4156b0b75b",
  "source": {
    "blob": "1974ceb88253af7f67c44e62763692ff2e34a915",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variantb548763ef7a73e7816a4e9da698a3f8765761450e0f72a37a324a3a8ba035079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faa3624ece62bc4156b0b75ba7270520c691a764eacfa078c5bce3eb3c872887",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variantb548763ef7a73e7816a4e9da698a3f8765761450e0f72a37a324a3a8ba035079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b055b262d6be6297ebec31da81e886d70a9db93f4621b2bf9c6175fe663315d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def exampleCurveZetaFormulaSurface : CurveZetaFormulaSurface :=
  { curve := exampleCurveSurface
    genus := 2
    exponentialPointCountFormulaLabel :=
      "Z(C,T)=exp(sum_{n>=1} #C(F_{q^n}) T^n / n)"
    rationalFormLabel := "Z(C,T)=P_C(T)/((1-T)(1-qT))"
    numeratorPolynomialLabel := "P_C(T)"
    numeratorDegree := 4
    reciprocalRootFactorizationLabel :=
      "P_C(T)=prod_{i=1}^{2g}(1-alpha_i*T)"
    reciprocalRootCount := 4
    reciprocalRootAbsValueLabel := "|alpha_i|=sqrt(q)"
    zeroCircleLabel := "|T|=q^(-1/2)"
    criticalLineLabel := "T=q^(-s) gives Re(s)=1/2"
    formulaRecorded := true
    rhFunctionFieldTheoremImported := false }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variantb548763ef7a73e7816a4e9da698a3f8765761450e0f72a37a324a3a8ba035079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FunctionFieldRH/Variantb548763ef7a73e7816a4e9da698a3f8765761450e0f72a37a324a3a8ba035079.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1974ceb88253af7f67c44e62763692ff2e34a915` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
