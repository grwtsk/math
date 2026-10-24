# edgeWindow_long

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98f7b3c8-0055-67a8-2313-4fec19e50cb3",
  "kind": "theorem",
  "lexical_name": "edgeWindow_long",
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
  "slug": "edgewindow-long--487b24eccadf0d9494d2bb35",
  "source": {
    "blob": "d5d3bff34e1e0fe9a46fcf8c32c2dca6caae55a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487b24eccadf0d9494d2bb350519eb311a9bd0481dd26271689e5ecce728cd49",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98f7b3c8-0055-67a8-2313-4fec19e50cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem edgeWindow_long {A : ℝ} (hA : 20000000000000 ≤ A) {n : ℕ}
    (hn : n ∈ actualNegativeEdgeWindow A) :
    n ∈ Finset.Ioc (vaughanCutoff A) ⌊Real.exp (2 * A)⌋₊ := by
  have hp : 0 < A := by linarith
  have he := Real.pow_div_factorial_le_exp A hp.le 3
  norm_num at he
  have hpow : A ^ 2 ≤ Real.exp A := by
    have hs := sq_nonneg A
    nlinarith
  have hl : A ^ 2 ≤ Real.exp (2 * A - 13) :=
    hpow.trans (Real.exp_le_exp.mpr (by linarith))
  have hU : vaughanCutoff A ≤ ⌊Real.exp (2 * A - 13)⌋₊ := Nat.floor_mono hl
  have hN : ⌊Real.exp (2 * A - 12)⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  have hm := Finset.mem_Ioc.mp hn
  exact Finset.mem_Ioc.mpr ⟨by omega, by omega⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75cdedf159b6b8126a7602e5b9fd04b3ccd3a3631d14afc28ec891d8c0d939e7SourceActualNega/Variant2ff42d53b8d76748e7c15c14df9ef91b824caf4a3587ba8ff3dec81fdb2d6010.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5d3bff34e1e0fe9a46fcf8c32c2dca6caae55a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
