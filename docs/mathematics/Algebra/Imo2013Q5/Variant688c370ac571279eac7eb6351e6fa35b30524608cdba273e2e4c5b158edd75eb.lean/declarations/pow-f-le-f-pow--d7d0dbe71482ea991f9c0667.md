# pow_f_le_f_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9345f56f-0900-be5b-b812-54b285bef809",
  "kind": "theorem",
  "lexical_name": "pow_f_le_f_pow",
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
  "slug": "pow-f-le-f-pow--d7d0dbe71482ea991f9c0667",
  "source": {
    "blob": "5c037a8ec632658f7774ed5cec595710d00994db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 138,
    "path": "GRWTSK/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d0dbe71482ea991f9c0667a72360a8990399dfbb3353da4a57f55d506d808a",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9345f56f-0900-be5b-b812-54b285bef809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_f_le_f_pow {f : ℚ → ℝ} {n : ℕ} (hn : 0 < n) {x : ℚ} (hx : 1 < x)
    (H1 : ∀ x y, 0 < x → 0 < y → f (x * y) ≤ f x * f y) (H4 : ∀ n : ℕ, 0 < n → (n : ℝ) ≤ f n) :
    f (x ^ n) ≤ f x ^ n := by
  induction' n with pn hpn
  · exfalso; exact Nat.lt_asymm hn hn
  cases' pn with pn
  · norm_num
  have hpn' := hpn pn.succ_pos
  rw [pow_succ' x (pn + 1), pow_succ' (f x) (pn + 1)]
  have hxp : 0 < x := by positivity
  calc
    f (x ^ (pn + 1) * x) ≤ f (x ^ (pn + 1)) * f x := H1 (x ^ (pn + 1)) x (pow_pos hxp (pn + 1)) hxp
    _ ≤ f x ^ (pn + 1) * f x := by gcongr; exact (f_pos_of_pos hxp H1 H4).le
#align imo2013_q5.pow_f_le_f_pow Imo2013Q5.pow_f_le_f_pow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2013Q5/Variant688c370ac571279eac7eb6351e6fa35b30524608cdba273e2e4c5b158edd75eb.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c037a8ec632658f7774ed5cec595710d00994db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
