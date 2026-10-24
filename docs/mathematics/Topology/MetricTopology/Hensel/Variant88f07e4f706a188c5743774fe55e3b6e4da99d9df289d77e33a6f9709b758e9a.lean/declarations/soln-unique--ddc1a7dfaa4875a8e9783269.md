# soln_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccdda1bd-de34-1014-4c91-7416d4ee1abd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f8ce651-c3a0-2c73-240d-94874f213d82",
  "kind": "theorem",
  "lexical_name": "soln_unique",
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
  "slug": "soln-unique--ddc1a7dfaa4875a8e9783269",
  "source": {
    "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 395,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc1a7dfaa4875a8e9783269feefe91707fea43ec5845123b37f82d7ed0b13cb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f8ce651-c3a0-2c73-240d-94874f213d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem soln_unique (z : ℤ_[p]) (hev : F.eval z = 0)
    (hnlt : ‖z - a‖ < ‖F.derivative.eval a‖) : z = soln :=
  have soln_dist : ‖z - soln‖ < ‖F.derivative.eval a‖ :=
    calc
      ‖z - soln‖ = ‖z - a + (a - soln)‖ := by rw [sub_add_sub_cancel]
      _ ≤ max ‖z - a‖ ‖a - soln‖ := PadicInt.nonarchimedean _ _
      _ < ‖F.derivative.eval a‖ :=
        max_lt hnlt ((norm_sub_rev soln a ▸ (soln_dist_to_a_lt_deriv hnorm)) hnsol)

  let h := z - soln
  let ⟨q, hq⟩ := F.binomExpansion soln h
  have : (F.derivative.eval soln + q * h) * h = 0 :=
    Eq.symm
      (calc
        0 = F.eval (soln + h) := by simp [h, hev]
        _ = F.derivative.eval soln * h + q * h ^ 2 := by rw [hq, eval_soln, zero_add]
        _ = (F.derivative.eval soln + q * h) * h := by rw [sq, right_distrib, mul_assoc]
        )
  have : h = 0 :=
    by_contra fun hne =>
      have : F.derivative.eval soln + q * h = 0 :=
        (eq_zero_or_eq_zero_of_mul_eq_zero this).resolve_right hne
      have : F.derivative.eval soln = -q * h := by simpa using eq_neg_of_add_eq_zero_left this
      lt_irrefl ‖F.derivative.eval soln‖
        (calc
          ‖F.derivative.eval soln‖ = ‖-q * h‖ := by rw [this]
          _ ≤ 1 * ‖h‖ := by
            rw [norm_mul]
            exact mul_le_mul_of_nonneg_right (PadicInt.norm_le_one _) (norm_nonneg _)
          _ = ‖z - soln‖ := by simp [h]
          _ < ‖F.derivative.eval soln‖ := by rw [soln_deriv_norm]; apply soln_dist
          )
  eq_of_sub_eq_zero (by rw [← this])

end Hensel

variable {p : ℕ} [Fact p.Prime] {F : Polynomial ℤ_[p]} {a : ℤ_[p]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13431c4c2cb9de5896e340e1415f6454c838c6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
