# cancel_power

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:933eb1bd-58b7-3c44-6e2e-a539dfe8a71b",
  "kind": "theorem",
  "lexical_name": "cancel_power",
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
  "slug": "cancel-power--6afde4b7c4637bc13c7d93f9",
  "source": {
    "blob": "fa69112d19301b64b957e771f64bc721fb4d76cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6afde4b7c4637bc13c7d93f91153718f3332b9ce2c1153fd5c2d8266aa9c750e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/WeierstrassJetDenominator.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933eb1bd-58b7-3c44-6e2e-a539dfe8a71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancel_power (n p : ℤ) (hn : n≠0) (hp : n ∣ p-1)
    (r : ℕ) (d : ℤ) (h : n^r ∣ d*p) : n^r ∣ d := by
  induction r generalizing d with
  | zero => simp
  | succ r ih =>
    have hnp : n ∣ d*p := dvd_trans (by refine ⟨n^r,?_⟩; ring) h
    have hnd : n ∣ d := by
      have hh := dvd_sub hnp (dvd_mul_of_dvd_right hp d)
      convert hh using 1 <;> ring
    obtain ⟨e,he⟩ := hnd
    have hre : n^r ∣ e*p := by
      obtain ⟨z,hz⟩ := h
      refine ⟨z,mul_left_cancel₀ hn ?_⟩
      calc
        n*(e*p) = d*p := by rw [he]; ring
        _ = n^(r+1)*z := hz
        _ = n*(n^r*z) := by ring
    obtain ⟨z,hz⟩ := ih e hre
    refine ⟨z,?_⟩
    rw [he,hz]
    ring

/-- Exact all-multiplier clearing, including d=0, without fitting a denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/WeierstrassJetDenominator.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa69112d19301b64b957e771f64bc721fb4d76cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
