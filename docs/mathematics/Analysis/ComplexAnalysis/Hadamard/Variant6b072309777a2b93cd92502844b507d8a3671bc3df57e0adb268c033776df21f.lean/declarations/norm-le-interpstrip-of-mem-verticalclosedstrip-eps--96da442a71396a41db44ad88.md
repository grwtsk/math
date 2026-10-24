# norm_le_interpStrip_of_mem_verticalClosedStrip_eps

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d07b6a-9773-d4bd-6088-a3e577228d9a",
  "kind": "lemma",
  "lexical_name": "norm_le_interpStrip_of_mem_verticalClosedStrip_eps",
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
  "slug": "norm-le-interpstrip-of-mem-verticalclosedstrip-eps--96da442a71396a41db44ad88",
  "source": {
    "blob": "66f8e734f866c4ad7b9ec241fb86967a95d293e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 423,
    "line": 409,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96da442a71396a41db44ad886703a3e27e72fdf9faaf72ce874a512d6b417276",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d07b6a-9773-d4bd-6088-a3e577228d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–423.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_le_interpStrip_of_mem_verticalClosedStrip_eps (ε : ℝ) (hε : ε > 0) (z : ℂ)
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip 0 1))
    (hd : DiffContOnCl ℂ f (verticalStrip 0 1)) (hz : z ∈ verticalClosedStrip 0 1) :
    ‖f z‖ ≤ ‖((ε + sSupNormIm f 0) ^ (1 - z) * (ε + sSupNormIm f 1) ^ z : ℂ)‖ := by
  simp only [norm_mul, ← ofReal_add, norm_cpow_eq_rpow_re_of_pos (sSupNormIm_eps_pos f hε _) _,
    sub_re, one_re]
  rw [← mul_inv_le_iff₀', ← one_mul (((ε + sSupNormIm f 1) ^ z.re)), ← mul_inv_le_iff₀,
    ← Real.rpow_neg_one, ← Real.rpow_neg_one]
  · simp only [← Real.rpow_mul (le_of_lt (sSupNormIm_eps_pos f hε _)),
    mul_neg, mul_one, neg_sub, mul_assoc]
    simpa [F, norm_invInterpStrip _ _ hε, norm_smul, mul_comm] using
      norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip f ε hε z hd hB hz
  · simp only [Real.rpow_pos_of_pos (sSupNormIm_eps_pos f hε _) z.re]
  · simp only [Real.rpow_pos_of_pos (sSupNormIm_eps_pos f hε _) (1 - z.re)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant6b072309777a2b93cd92502844b507d8a3671bc3df57e0adb268c033776df21f.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66f8e734f866c4ad7b9ec241fb86967a95d293e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
