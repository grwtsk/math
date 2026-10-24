# ih_n

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dcc9c68774b5d61fe8ff9be56b57fe423bf2007dfbb0bf67c30c39a0c563e85a",
  "kind": "def",
  "lexical_name": "ih_n",
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
  "slug": "ih-n--0bda4405ce468e9bf8fb5b1c",
  "source": {
    "blob": "84e2d86ca0e264876788b1dd9c5f612070343e36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 229,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bda4405ce468e9bf8fb5b1cb57e495ea82036f29cacc8fe2d8c330b8bf1cadd",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dcc9c68774b5d61fe8ff9be56b57fe423bf2007dfbb0bf67c30c39a0c563e85a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def ih_n {n : ℕ} {z : ℤ_[p]} (hz : ih n z) : { z' : ℤ_[p] // ih (n + 1) z' } :=
  have h1 : ‖(↑(F.eval z) : ℚ_[p]) / ↑(F.derivative.eval z)‖ ≤ 1 := calc_norm_le_one hnorm hz
  let z1 : ℤ_[p] := ⟨_, h1⟩
  let z' : ℤ_[p] := z - z1
  ⟨z',
    have hdist : ‖F.derivative.eval z' - F.derivative.eval z‖ < ‖F.derivative.eval a‖ :=
      calc_deriv_dist hnorm rfl (by simp [hz.1]) hz
    have hfeq : ‖F.derivative.eval z'‖ = ‖F.derivative.eval a‖ := by
      rw [sub_eq_add_neg, ← hz.1, ← norm_neg (F.derivative.eval z)] at hdist
      have := PadicInt.norm_eq_of_norm_add_lt_right hdist
      rwa [norm_neg, hz.1] at this
    let ⟨q, heq⟩ := calc_eval_z' hnorm rfl hz h1 rfl
    have hnle : ‖F.eval z'‖ ≤ ‖F.derivative.eval a‖ ^ 2 * T ^ 2 ^ (n + 1) :=
      calc_eval_z'_norm hz heq h1 rfl
    ⟨hfeq, hnle⟩⟩

-- Porting note: unsupported option eqn_compiler.zeta
-- set_option eqn_compiler.zeta false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant477e630950f832b54f7aca6254e9f1e14ff4bbae61917f11c63d393d990bad74.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84e2d86ca0e264876788b1dd9c5f612070343e36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
