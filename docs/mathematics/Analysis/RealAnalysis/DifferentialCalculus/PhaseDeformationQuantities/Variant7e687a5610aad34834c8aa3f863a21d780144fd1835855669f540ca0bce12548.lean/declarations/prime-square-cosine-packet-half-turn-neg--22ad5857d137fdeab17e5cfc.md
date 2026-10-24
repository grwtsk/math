# prime_square_cosine_packet_half_turn_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a550041-9862-4914-a702-d99c42d58095",
  "kind": "theorem",
  "lexical_name": "prime_square_cosine_packet_half_turn_neg",
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
  "slug": "prime-square-cosine-packet-half-turn-neg--22ad5857d137fdeab17e5cfc",
  "source": {
    "blob": "072bd8093642a9de5f3c5c7fc16e025d0ce95e0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 287,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22ad5857d137fdeab17e5cfc36b193c88f7de56d19aab6d9052d9af65ec17da0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a550041-9862-4914-a702-d99c42d58095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_square_cosine_packet_half_turn_neg {p : ℕ} (hp : p.Prime) :
    primeSquareCosinePacket p (Real.pi / Real.log p) < 0 := by
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp.one_lt
  have hl : 0 < Real.log (p : ℝ) := Real.log_pos hp1
  have hs : 0 < Real.sqrt (p : ℝ) := Real.sqrt_pos.mpr (by linarith)
  have hsp : Real.sqrt (p : ℝ) < p := by
    have hsq := Real.sq_sqrt (show 0 ≤ (p : ℝ) by linarith)
    have hn := Real.sqrt_nonneg (p : ℝ)
    nlinarith
  rw [prime_square_cosine_packet_eq hp, div_mul_cancel₀ _ (ne_of_gt hl), Real.cos_pi]
  have hd : Real.log (p : ℝ) / (p : ℝ) < Real.log p / Real.sqrt p :=
    div_lt_div_of_pos_left hl hs hsp
  norm_num
  linarith

/-- An exact local discriminant dictionary; this equality supplies no uniform bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/PhaseDeformationQuantities/Variant7e687a5610aad34834c8aa3f863a21d780144fd1835855669f540ca0bce12548.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072bd8093642a9de5f3c5c7fc16e025d0ce95e0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
