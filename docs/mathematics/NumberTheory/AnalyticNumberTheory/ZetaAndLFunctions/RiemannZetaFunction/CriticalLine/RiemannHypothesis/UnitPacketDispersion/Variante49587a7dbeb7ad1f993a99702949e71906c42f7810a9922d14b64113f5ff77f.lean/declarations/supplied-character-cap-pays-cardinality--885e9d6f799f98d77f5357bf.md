# supplied_character_cap_pays_cardinality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1abb554d-60bc-add5-4274-02617b698c29",
  "kind": "theorem",
  "lexical_name": "supplied_character_cap_pays_cardinality",
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
  "slug": "supplied-character-cap-pays-cardinality--885e9d6f799f98d77f5357bf",
  "source": {
    "blob": "506e74dc6274c5a9402fffea8c305448e00a42fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:885e9d6f799f98d77f5357bf18888c3ac9e7ee32d29228e31321dd0cd678bc54",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1abb554d-60bc-add5-4274-02617b698c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supplied_character_cap_pays_cardinality {G : Type*} [AddCommGroup G] [Fintype G]
    (f : G → ℂ) {B : ℝ} (hcap : ∀ psi : AddChar G ℂ, psi ≠ 0 → ‖coefficient f psi‖ ≤ B)
    (x : G) : ‖f x - packetMean f‖ ≤ ((Fintype.card G - 1 : ℕ) : ℝ) * B := by
  classical
  calc
    _ ≤ ∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), ‖coefficient f psi‖ :=
      complete_character_payment f x
    _ ≤ ∑ psi ∈ Finset.univ.erase (0 : AddChar G ℂ), B :=
      Finset.sum_le_sum (fun psi hpsi ↦ hcap psi (Finset.mem_erase.mp hpsi).1)
    _ = _ := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UnitPacketDispersion/Variante49587a7dbeb7ad1f993a99702949e71906c42f7810a9922d14b64113f5ff77f.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `506e74dc6274c5a9402fffea8c305448e00a42fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
