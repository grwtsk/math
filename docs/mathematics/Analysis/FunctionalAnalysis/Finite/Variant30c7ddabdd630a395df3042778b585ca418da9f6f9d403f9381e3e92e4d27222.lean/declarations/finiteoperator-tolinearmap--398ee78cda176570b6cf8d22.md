# FiniteOperator.toLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d88780ca8a18bab278a2450557ff22e523104a5c58040b6b53b9b833e5d2088",
  "kind": "def",
  "lexical_name": "FiniteOperator.toLinearMap",
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
  "slug": "finiteoperator-tolinearmap--398ee78cda176570b6cf8d22",
  "source": {
    "blob": "9272db02b325cedb50507bf44f192f85617d80e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:398ee78cda176570b6cf8d229b87e80b01831be3dede06439a1832066bac1d23",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d88780ca8a18bab278a2450557ff22e523104a5c58040b6b53b9b833e5d2088`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteOperator.toLinearMap
    {Row : Type u} {Column : Type v}
    [Fintype Row] [Fintype Column] [DecidableEq Column]
    (A : FiniteOperator Row Column) :
    FiniteHilbert Column →ₗ[ℂ] FiniteHilbert Row :=
  Matrix.toEuclideanLin A

/-- Matrix Hermiticity is exactly symmetry of the induced finite linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Finite/Variant30c7ddabdd630a395df3042778b585ca418da9f6f9d403f9381e3e92e4d27222.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9272db02b325cedb50507bf44f192f85617d80e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
