# _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootZeta23ParamsGpCW.Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.Zeta23.Params.GpCW

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dfbc51368a3cfa4f74b76794af2c50d90f7481a924d921464c85c299cb53b1ab",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootZeta23ParamsGpCW.Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.Zeta23.Params.GpCW",
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
  "slug": "root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz--3c4783d47dcc3c9aac8bed26",
  "source": {
    "blob": "8636a9fd7745206d31f2a08957c332d998e96a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c4783d47dcc3c9aac8bed26181a55ce85110c6d0e48f37c0b7bd4f931329d72",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dfbc51368a3cfa4f74b76794af2c50d90f7481a924d921464c85c299cb53b1ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootZeta23ParamsGpCW.Varianta495aaaf2ef0446761f723900033b520598656ed189ec3fc5f46efd896fa8669.Zeta23.Params.GpCW (cPi : ℝ) (c : ℕ → ℂ) : Matrix (Fin (Q.d T)) (Fin (Q.d T)) ℂ :=
  fun k l => (Q.GentryCW T cPi c (k : ℤ) (l : ℤ) : ℂ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Moments/Variantfaf8271cf150fc88c3b4d708969a66185956c7707aa190a09f52190c6d2eb0f5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8636a9fd7745206d31f2a08957c332d998e96a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
