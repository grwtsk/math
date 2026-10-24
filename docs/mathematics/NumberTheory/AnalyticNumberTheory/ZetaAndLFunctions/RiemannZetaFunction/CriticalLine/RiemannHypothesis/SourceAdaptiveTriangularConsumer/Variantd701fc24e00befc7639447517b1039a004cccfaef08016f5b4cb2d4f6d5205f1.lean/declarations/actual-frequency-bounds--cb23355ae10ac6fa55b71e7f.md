# actual_frequency_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:42f9a5c0-583c-c5d2-ff86-03b781b66f03",
  "kind": "theorem",
  "lexical_name": "actual_frequency_bounds",
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
  "slug": "actual-frequency-bounds--cb23355ae10ac6fa55b71e7f",
  "source": {
    "blob": "c1fce7ccbbd1420c8378d77535fb6029f500f557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 85,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb23355ae10ac6fa55b71e7f1615538100333f94655cf400f74e597f17996533",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42f9a5c0-583c-c5d2-ff86-03b781b66f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_frequency_bounds (A : ℝ) (hA : 1 ≤ A) {m n : ℕ}
    (hm : m ∈ longInventory A) (hn : n ∈ longInventory A) :
    0 < frequency m n ∧ frequency m n ≤ 4 * A ∧ 4 * A < bandwidth A := by
  have hmU : vaughanCutoff A < m := (Finset.mem_Ioc.mp hm).1
  have hmone : 1 < m := lt_of_le_of_lt (vaughanCutoff_pos A hA) hmU
  have hmreal : (1 : ℝ) < m := by exact_mod_cast hmone
  have hmlog := Real.log_pos hmreal
  have hnlog := Real.log_natCast_nonneg n
  have hmle := inventory_log_le A hm
  have hnle := inventory_log_le A hn
  unfold frequency bandwidth
  constructor
  · linarith
  constructor
  · linarith
  · linarith [B1_nonneg A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveTriangularConsumer/Variantd701fc24e00befc7639447517b1039a004cccfaef08016f5b4cb2d4f6d5205f1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1fce7ccbbd1420c8378d77535fb6029f500f557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
