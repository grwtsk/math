# calc_eval_z'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e7fadb4f36b41fb4653466ca7f32d46cf860764072da6be0e7527633942587c",
  "kind": "def",
  "lexical_name": "calc_eval_z'",
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
  "slug": "calc-eval-z--a93c77e683fc73d3073cf211",
  "source": {
    "blob": "13431c4c2cb9de5896e340e1415f6454c838c6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 174,
    "path": "GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a93c77e683fc73d3073cf21170ddb4801838704f1a0f219b51941da07dbfe265",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e7fadb4f36b41fb4653466ca7f32d46cf860764072da6be0e7527633942587c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def calc_eval_z' {z z' z1 : ℤ_[p]} (hz' : z' = z - z1) {n} (hz : ih n z)
    (h1 : ‖(↑(F.eval z) : ℚ_[p]) / ↑(F.derivative.eval z)‖ ≤ 1) (hzeq : z1 = ⟨_, h1⟩) :
    { q : ℤ_[p] // F.eval z' = q * z1 ^ 2 } := by
  have hdzne : F.derivative.eval z ≠ 0 :=
    mt norm_eq_zero.2 (by rw [hz.1]; apply deriv_norm_ne_zero; assumption)
  have hdzne' : (↑(F.derivative.eval z) : ℚ_[p]) ≠ 0 := fun h => hdzne (Subtype.ext_iff_val.2 h)
  obtain ⟨q, hq⟩ := F.binomExpansion z (-z1)
  have : ‖(↑(F.derivative.eval z) * (↑(F.eval z) / ↑(F.derivative.eval z)) : ℚ_[p])‖ ≤ 1 := by
    rw [padicNormE.mul]
    exact mul_le_one₀ (PadicInt.norm_le_one _) (norm_nonneg _) h1
  have : F.derivative.eval z * -z1 = -F.eval z := by
    calc
      F.derivative.eval z * -z1 =
          F.derivative.eval z * -⟨↑(F.eval z) / ↑(F.derivative.eval z), h1⟩ := by rw [hzeq]
      _ = -(F.derivative.eval z * ⟨↑(F.eval z) / ↑(F.derivative.eval z), h1⟩) := mul_neg _ _
      _ = -⟨F.derivative.eval z * (F.eval z / (F.derivative.eval z : ℤ_[p]) : ℚ_[p]), this⟩ :=
        (Subtype.ext <| by simp only [PadicInt.coe_neg, PadicInt.coe_mul, Subtype.coe_mk])
      _ = -F.eval z := by simp only [mul_div_cancel₀ _ hdzne', Subtype.coe_eta]

  exact ⟨q, by simpa only [sub_eq_add_neg, this, hz', add_neg_cancel, neg_sq, zero_add] using hq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hensel/Variant88f07e4f706a188c5743774fe55e3b6e4da99d9df289d77e33a6f9709b758e9a.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13431c4c2cb9de5896e340e1415f6454c838c6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
