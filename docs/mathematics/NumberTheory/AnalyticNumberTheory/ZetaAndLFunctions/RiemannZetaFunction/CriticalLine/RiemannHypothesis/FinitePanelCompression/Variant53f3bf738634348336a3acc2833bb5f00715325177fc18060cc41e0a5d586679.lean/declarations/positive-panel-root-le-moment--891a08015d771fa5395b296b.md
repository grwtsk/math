# positive_panel_root_le_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4738f61-63e8-fe37-c283-793c9409008c",
  "kind": "theorem",
  "lexical_name": "positive_panel_root_le_moment",
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
  "slug": "positive-panel-root-le-moment--891a08015d771fa5395b296b",
  "source": {
    "blob": "a13ea631d725445b54df42e1114c44c9a39a21eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891a08015d771fa5395b296b9962229706bb425d0273bd53a18ec25e5557e456",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4738f61-63e8-fe37-c283-793c9409008c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_panel_root_le_moment {ι : Type*} {s : Finset ι} {w B : ι → ℝ}
    {p : ℝ} (hs : s.Nonempty) (hw : ∀ i, 0 < w i) (hB : ∀ i, 0 ≤ B i) (hp : 1 ≤ p) :
    rootEnergy s w B p ≤ moment s w B p := by
  have hW := mass_pos hs hw
  have hV : 0 ≤ load s w B := Finset.sum_nonneg (fun i _ => mul_nonneg (hw i).le (hB i))
  have hE : 0 ≤ moment s w B p := Finset.sum_nonneg
    (fun i _ => mul_nonneg (hw i).le (Real.rpow_nonneg (hB i) p))
  have hppos : 0 < p := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hp
  have h := finite_weighted_holder s w (fun i => w i * B i) hp hw
    (fun i => mul_nonneg (hw i).le (hB i))
  have hterms : (∑ i ∈ s, (w i * B i) ^ p / (w i) ^ (p - 1)) = moment s w B p := by
    apply Finset.sum_congr rfl
    intro i _
    have he := weighted_power_payment (p := p) (hw i) (mul_nonneg (hw i).le (hB i))
    have hd : w i * B i / w i = B i := by field_simp [(hw i).ne']
    rw [hd] at he
    exact he.symm
  rw [hterms] at h
  change load s w B ≤ (mass s w) ^ (1 - p⁻¹) * (moment s w B p) ^ p⁻¹ at h
  have hpow := Real.rpow_le_rpow hV h hppos.le
  rw [Real.mul_rpow (Real.rpow_nonneg hW.le _) (Real.rpow_nonneg hE _),
    ← Real.rpow_mul hW.le, ← Real.rpow_mul hE] at hpow
  have he : (1 - p⁻¹) * p = p - 1 := by field_simp
  rw [he, inv_mul_cancel₀ hppos.ne', Real.rpow_one] at hpow
  apply (div_le_iff₀ (Real.rpow_pos_of_pos hW (p - 1))).mpr
  simpa only [mass, load, mul_comm] using hpow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FinitePanelCompression/Variant53f3bf738634348336a3acc2833bb5f00715325177fc18060cc41e0a5d586679.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a13ea631d725445b54df42e1114c44c9a39a21eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
