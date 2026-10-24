# KPP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f51704b29d8b69076fe9a7335876dad1008c1de388986ad329a712b82063fb3",
  "kind": "def",
  "lexical_name": "KPP",
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
  "slug": "kpp--928ac4b266cbcf5b8dd37d91",
  "source": {
    "blob": "53f44380c7a4ec8099d45d329c081f43824d4a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 461,
    "line": 454,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:928ac4b266cbcf5b8dd37d91354418377a840fe267ce5af51a1cecb747a605c8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f51704b29d8b69076fe9a7335876dad1008c1de388986ad329a712b82063fb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KPP (C cϱ : ℝ) : ℝ := (1 / (2 * π ^ 2)) * ((8 + 8 * cϱ) + 32 * π * C + 2 * π / Real.log 2)

/-- **[prop:PP] for the general-coefficient Dirichlet polynomial P_c — three-term form.**
For ONE (p, F) under the window-generic taper hypotheses LocalHypsCore, T ≥ 1, an H-MV constant C ≥ 0,
and any c : ℕ → ℂ with c 1 = 0:
  |𝓜[P_c,P_c] − (T/π)·Σ_{N≤X} ‖c_N‖²/N·g(log N)|
      ≤ (8+8cϱ)/(2π²)·L·Σ‖c_N‖²/N  +  32π/(2π²)·C·L·Σ‖c_N‖²  +  (2π/log 2)/(2π²)·L·(Σ‖c_N‖/√N)²,
all sums over N ∈ Finset.Ioc 0 ⌊X⌋₊ (= PrimeSide.primeRange X). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant2b7ccb6043ba7d4ab31115ac62d343cede63f5a9c69be878254f05f33b09da7d.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f44380c7a4ec8099d45d329c081f43824d4a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
