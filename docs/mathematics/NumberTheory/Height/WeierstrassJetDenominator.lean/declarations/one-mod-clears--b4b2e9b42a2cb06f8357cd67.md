# one_mod_clears

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4091e576-2bb0-0962-0b36-cab3f7c0e1e6",
  "kind": "theorem",
  "lexical_name": "one_mod_clears",
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
  "slug": "one-mod-clears--b4b2e9b42a2cb06f8357cd67",
  "source": {
    "blob": "fa69112d19301b64b957e771f64bc721fb4d76cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4b2e9b42a2cb06f8357cd672f1bc2e426b6a4bc6a482295a5910ad6ac9dfde5",
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

Occurrence: `result:4091e576-2bb0-0962-0b36-cab3f7c0e1e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_mod_clears (n : ℕ) (hn : 0<n) (p : ℤ)
    (hp : (n : ℤ) ∣ p-1) (r d : ℕ) :
    ClearsValue d ((p : ℚ)/(n : ℚ)^r) ↔ n^r ∣ d := by
  have hnq : (n : ℚ)≠0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt hn)
  have hnz : (n : ℤ)≠0 := Int.natCast_ne_zero.mpr (Nat.ne_of_gt hn)
  constructor
  · rintro ⟨z,hz⟩
    have he : (d : ℤ)*p=(n : ℤ)^r*z := by
      have hq : (d : ℚ)*(p : ℚ)=(z : ℚ)*(n : ℚ)^r := by
        calc
          _ = ((d : ℚ)*((p : ℚ)/(n : ℚ)^r))*(n : ℚ)^r := by field_simp [hnq]; ring
          _ = _ := by rw [hz]
      exact_mod_cast (by simpa only [mul_comm] using hq)
    have hd : (n : ℤ)^r ∣ (d : ℤ)*p := ⟨z,he⟩
    have hh := cancel_power (n : ℤ) p hnz hp r (d : ℤ) hd
    exact_mod_cast hh
  · rintro ⟨q,hq⟩
    refine ⟨(q : ℤ)*p,?_⟩
    rw [hq]
    push_cast
    field_simp [hnq]
    <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/WeierstrassJetDenominator.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa69112d19301b64b957e771f64bc721fb4d76cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
