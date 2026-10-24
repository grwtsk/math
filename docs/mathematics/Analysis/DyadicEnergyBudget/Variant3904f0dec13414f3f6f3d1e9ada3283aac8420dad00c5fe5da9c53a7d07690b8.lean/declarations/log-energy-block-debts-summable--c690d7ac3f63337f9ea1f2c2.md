# log_energy_block_debts_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37b1cc0f-2249-6ec5-2b3f-d5b116c609b4",
  "kind": "theorem",
  "lexical_name": "log_energy_block_debts_summable",
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
  "slug": "log-energy-block-debts-summable--c690d7ac3f63337f9ea1f2c2",
  "source": {
    "blob": "9ea087f3fa738fde8cdd1d6f02da1ce56d908400",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c690d7ac3f63337f9ea1f2c2f3fd4a9b689f5770c634751b0fc9bbfefaf66aaf",
  "verification": {
    "reference": "docs/verification/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37b1cc0f-2249-6ec5-2b3f-d5b116c609b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_energy_block_debts_summable {L : ℕ → ℝ} {C epsilon : ℝ}
    (heps : 0 < epsilon) (hC : 0 ≤ C) (hL : ∀ n, 0 ≤ L n)
    (hbudget : ∀ n, (L n) ^ 2 ≤ C * ((n + 1 : ℕ) : ℝ) ^ (-2 - epsilon)) : Summable L := by
  have hseries := (Real.summable_nat_rpow.mpr
    (show (-1 - epsilon / 2 : ℝ) < -1 by linarith)).comp_injective Nat.succ_injective
  have hmajorant := hseries.mul_left (Real.sqrt C)
  exact Summable.of_nonneg_of_le hL (fun n => work_from_log_energy (hL n) hC (hbudget n)) hmajorant

end
end GRWTSK.RiemannHypothesis.Conversation.DyadicEnergyBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DyadicEnergyBudget/Variant3904f0dec13414f3f6f3d1e9ada3283aac8420dad00c5fe5da9c53a7d07690b8.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ea087f3fa738fde8cdd1d6f02da1ce56d908400` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
