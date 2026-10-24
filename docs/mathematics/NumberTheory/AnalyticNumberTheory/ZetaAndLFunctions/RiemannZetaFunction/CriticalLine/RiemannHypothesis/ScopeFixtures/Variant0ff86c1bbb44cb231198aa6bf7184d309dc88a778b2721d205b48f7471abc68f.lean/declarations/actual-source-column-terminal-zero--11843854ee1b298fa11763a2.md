# actual_source_column_terminal_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67be17bd-4869-b4d7-f96e-235fae12593a",
  "kind": "theorem",
  "lexical_name": "actual_source_column_terminal_zero",
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
  "slug": "actual-source-column-terminal-zero--11843854ee1b298fa11763a2",
  "source": {
    "blob": "cb329cc9cdb443461dd018f350274e9e27dfaa0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant0ff86c1bbb44cb231198aa6bf7184d309dc88a778b2721d205b48f7471abc68f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11843854ee1b298fa11763a2c2eff78d965b15e36a622e12fc3f605e201528af",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant0ff86c1bbb44cb231198aa6bf7184d309dc88a778b2721d205b48f7471abc68f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67be17bd-4869-b4d7-f96e-235fae12593a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_column_terminal_zero (A : ℝ) (hA : 1 ≤ A) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * sourceKernelCutoff A : ℕ) : ℝ)) = 0 := by
  classical
  have hU := vaughanCutoff_pos A hA
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hN : 1 ≤ sourceKernelCutoff A := hU.trans hUN
  apply Finset.sum_eq_zero
  intro m hm
  have hmU := (Finset.mem_Ioc.mp hm).1
  have hm2 : 2 ≤ m := by omega
  have hcut : sourceKernelCutoff A < m * sourceKernelCutoff A := by nlinarith
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * sourceKernelCutoff A) hcut]
  exact mul_zero _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant0ff86c1bbb44cb231198aa6bf7184d309dc88a778b2721d205b48f7471abc68f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ScopeFixtures/Variant0ff86c1bbb44cb231198aa6bf7184d309dc88a778b2721d205b48f7471abc68f.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb329cc9cdb443461dd018f350274e9e27dfaa0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
