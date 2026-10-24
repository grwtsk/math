# thetaPhiJetPolynomial7_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4fe304d3-4949-3f8c-eeea-6dc3b520c58c",
  "kind": "theorem",
  "lexical_name": "thetaPhiJetPolynomial7_abs_le",
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
  "slug": "thetaphijetpolynomial7-abs-le--05e85cb360b783d6ebad716e",
  "source": {
    "blob": "1819768154537430ac8c6ec7fdb289a022fd654b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 31,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05e85cb360b783d6ebad716ecb056a97a5644dafa929578c23bc80b779ba8c6d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fe304d3-4949-3f8c-eeea-6dc3b520c58c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiJetPolynomial7_abs_le (k : Fin 7) {y : ℝ} (hy : 3 ≤ y) :
    |thetaPhiJetPolynomial7 k y| ≤
      2 * 4 ^ k.val * y ^ (k.val + 1) := by
  let x := y - 3
  have hx : 0 ≤ x := sub_nonneg.mpr hy
  have he : y = x + 3 := by
    dsimp [x]
    ring
  rw [he]
  have hplus : 0 ≤
      2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) +
        thetaPhiJetPolynomial7 k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial7] <;> ring_nf <;>
      nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
        pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7]
  have hminus : 0 ≤
      2 * 4 ^ k.val * (x + 3) ^ (k.val + 1) -
        thetaPhiJetPolynomial7 k (x + 3) := by
    fin_cases k <;> norm_num [thetaPhiJetPolynomial7] <;> ring_nf <;>
      nlinarith only [hx, pow_nonneg hx 2, pow_nonneg hx 3, pow_nonneg hx 4,
        pow_nonneg hx 5, pow_nonneg hx 6, pow_nonneg hx 7]
  exact abs_le.mpr ⟨by linarith, by linarith⟩

/-- One normalized source mode, indexed so m = 0 is the first theta mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant33eba9b78e69acb9cb8a1d769fdadb9a607e42e726c5200e6f7bac08f610111e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1819768154537430ac8c6ec7fdb289a022fd654b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
