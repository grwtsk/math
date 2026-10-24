# _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Xi.Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.Zeta23.Params.phiV

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ec84fd328f0a67978eafdb14adbc23ec3418c313e23bd1b2bee897a6e472ec0",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Xi.Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.Zeta23.Params.phiV",
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
  "slug": "root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz--692c88b97d43f1e318cdca5a",
  "source": {
    "blob": "189ff5bde429dd0b5ade5c1410dba56600dd91ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 209,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:692c88b97d43f1e318cdca5a1aaae44c6b83a025dd5c51c45ae7c8a87f5b156b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ec84fd328f0a67978eafdb14adbc23ec3418c313e23bd1b2bee897a6e472ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Xi.Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.Zeta23.Params.phiV (P : Params) (v : ℝ → ℝ) (T : ℝ) (u : ℝ) : ℝ :=
  Real.sqrt (max 0 (v (u / P.L T))) * P.phi T u

/-- the per-height parameter set realising φ_v at height T (ThmD's Params.atD trick, Zeta23/ThmD/ParamsD.lean:
(P.atV v T).phi T = P.phiV v T, while λ, w, L, X, d, τ_k, … are P's, definitionally). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variant81a2179e698b015c084623085ed07d90ee842bace7742a26a62d102542c71ff4.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189ff5bde429dd0b5ade5c1410dba56600dd91ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
