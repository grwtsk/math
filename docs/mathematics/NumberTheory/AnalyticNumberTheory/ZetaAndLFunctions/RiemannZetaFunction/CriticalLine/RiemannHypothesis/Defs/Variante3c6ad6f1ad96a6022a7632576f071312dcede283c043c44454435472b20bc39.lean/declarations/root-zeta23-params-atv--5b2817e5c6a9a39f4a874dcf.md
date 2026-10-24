# _root_.Zeta23.Params.atV

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f61df76d24cb7c061205c19d27d35d4cb6f852f49cccffc1e18c5a515ef24163",
  "kind": "def",
  "lexical_name": "_root_.Zeta23.Params.atV",
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
  "slug": "root-zeta23-params-atv--5b2817e5c6a9a39f4a874dcf",
  "source": {
    "blob": "16460e4d68013c156e91012fcdc6cb72b028ef9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 206,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5b2817e5c6a9a39f4a874dcf844a142a4a4c87df8fbd65c09169369701c65e1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f61df76d24cb7c061205c19d27d35d4cb6f852f49cccffc1e18c5a515ef24163`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.Zeta23.Params.atV (P : Params) (v : ℝ → ℝ) (T : ℝ) : Params :=
  ⟨fun x => P.phiV v T (P.L T / 2 - P.w * x), P.lam, P.w⟩

/-! ## 5. Hardy-side objects for the Z′ theorem  [XF′ §9.0] -/

/-- χ(s) := Λ(1−s)/Λ(s)·(Γ-part) — concretely the factor with ζ(s) = χ(s) ζ(1−s); we take the Mathlib-native
form χ := Gammaℝ(1−s)/Gammaℝ(s) (Gammaℝ s = π^{-s/2}Γ(s/2)), meromorphic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Defs/Variante3c6ad6f1ad96a6022a7632576f071312dcede283c043c44454435472b20bc39.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16460e4d68013c156e91012fcdc6cb72b028ef9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
