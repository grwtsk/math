# geometric_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a90f287-1838-252e-79d4-737d19b83f05",
  "kind": "theorem",
  "lexical_name": "geometric_coefficient",
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
  "slug": "geometric-coefficient--6cff7cf0bea4ec96e3b7feee",
  "source": {
    "blob": "fa69112d19301b64b957e771f64bc721fb4d76cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cff7cf0bea4ec96e3b7feee6e17e3733f0e7f06baabb2813178985eebe39618",
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

Occurrence: `result:1a90f287-1838-252e-79d4-737d19b83f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometric_coefficient {R : Type*} [CommRing R] (N k : ℕ)
    (hk : 2≤k) (hN : k≤N+1) :
    (iterate (0 : R[X]) 0 X N).coeff k=1 := by
  induction N generalizing k with
  | zero => omega
  | succ N ih =>
    rw [iterate]
    simp only [zero_mul,sub_zero,coeff_add]
    rw [coeff_X_mul_at _ k (by omega)]
    by_cases h2 : k=2
    · subst k
      have hl := (X_pow_dvd_iff.mp (square_dvd (0 : R[X]) 0 X N)) 1 (by decide)
      simpa using congrArg (fun z : R => 1+z) hl
    · have hk2 : 2≠k := Ne.symm h2
      rw [coeff_X_pow,if_neg hk2,zero_add]
      exact ih (k-1) (by omega) (by omega)

/-- Coefficient congruence is proved over Z/nZ for EVERY n, not only primes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/WeierstrassJetDenominator.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/WeierstrassJetDenominator.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa69112d19301b64b957e771f64bc721fb4d76cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
