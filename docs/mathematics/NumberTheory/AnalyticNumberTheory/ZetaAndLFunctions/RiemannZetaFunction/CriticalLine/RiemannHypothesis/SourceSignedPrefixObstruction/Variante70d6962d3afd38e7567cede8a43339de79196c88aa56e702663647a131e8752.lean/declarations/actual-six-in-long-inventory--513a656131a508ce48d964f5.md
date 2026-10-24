# actual_six_in_long_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a51d1e1-360a-28ac-9f8a-8a3f900858c4",
  "kind": "theorem",
  "lexical_name": "actual_six_in_long_inventory",
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
  "slug": "actual-six-in-long-inventory--513a656131a508ce48d964f5",
  "source": {
    "blob": "dd942dfe90fc4549d65b8e53d7172633af520a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variante70d6962d3afd38e7567cede8a43339de79196c88aa56e702663647a131e8752.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:513a656131a508ce48d964f58f0aa7a5ab1d03161b3e2e849c761ff508a02ac5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variante70d6962d3afd38e7567cede8a43339de79196c88aa56e702663647a131e8752.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a51d1e1-360a-28ac-9f8a-8a3f900858c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_six_in_long_inventory : 6 ∈ longInventory (7 / 4 : ℝ) := by
  have hlow := Real.add_one_le_exp (7 / 4 : ℝ)
  have heq : Real.exp (7 / 2 : ℝ) = Real.exp (7 / 4 : ℝ) ^ 2 := by
    rw [show (7 / 2 : ℝ) = 7 / 4 + 7 / 4 by norm_num, Real.exp_add, pow_two]
  have h6 : (6 : ℝ) ≤ Real.exp (7 / 2 : ℝ) := by rw [heq]; nlinarith
  rw [longInventory, Finset.mem_Ioc, actual_cutoff]
  constructor
  · norm_num
  · change 6 ≤ ⌊Real.exp (2 * (7 / 4 : ℝ))⌋₊
    apply Nat.le_floor
    norm_num only [Nat.cast_ofNat]
    rw [heq]
    nlinarith [hlow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variante70d6962d3afd38e7567cede8a43339de79196c88aa56e702663647a131e8752.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSignedPrefixObstruction/Variante70d6962d3afd38e7567cede8a43339de79196c88aa56e702663647a131e8752.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd942dfe90fc4549d65b8e53d7172633af520a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
