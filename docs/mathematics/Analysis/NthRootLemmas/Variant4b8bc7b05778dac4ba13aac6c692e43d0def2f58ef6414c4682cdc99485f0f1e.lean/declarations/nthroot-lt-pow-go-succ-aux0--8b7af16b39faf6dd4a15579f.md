# nthRoot.lt_pow_go_succ_aux0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:483c8943-afce-352a-75fb-04e87928c3c1",
  "kind": "theorem",
  "lexical_name": "nthRoot.lt_pow_go_succ_aux0",
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
  "slug": "nthroot-lt-pow-go-succ-aux0--8b7af16b39faf6dd4a15579f",
  "source": {
    "blob": "6b08970b5ea6e06095693372e837ca4fae666415",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b7af16b39faf6dd4a15579faa51c0fd4bbe59cba86e0dd80e6e0d96d63f63c7",
  "verification": {
    "reference": "docs/verification/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:483c8943-afce-352a-75fb-04e87928c3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private theorem nthRoot.lt_pow_go_succ_aux0 (hb : b ≠ 0) :
    a ≤ ((a ^ (n + 1) / b ^ n) + n * b) / (n + 1) := by
  rw [Nat.le_div_iff_mul_le (by positivity), Nat.mul_comm,
    ← Nat.add_mul_div_right _ _ (by positivity),
    Nat.le_div_iff_mul_le (by positivity)]
  #adaptation_note /-- Prior to nightly-2026-04-06, this was
  ```
  have := (Commute.all (b : ℤ) (a - b)).pow_add_mul_le_add_pow_of_sq_nonneg
    (by positivity) (sq_nonneg _) (sq_nonneg _) (by grind) (n + 1)
  grind
  ```
  -/
  zify
  have h := pow_add_mul_le_add_pow_of_sq_nonneg (a := (b : ℤ)) (b := (a : ℤ) - b)
    (ha := by positivity) (Hsq := by positivity) (Hsq' := by positivity) (H := by omega)
    (n := n + 1)
  rw [← sub_nonneg] at h ⊢
  convert! h using 1
  rw [pow_succ]; push_cast; ring1

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/NthRootLemmas/Variant4b8bc7b05778dac4ba13aac6c692e43d0def2f58ef6414c4682cdc99485f0f1e.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b08970b5ea6e06095693372e837ca4fae666415` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
