# finprod_count

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:524ca806-b024-192a-e9b3-b432cbd79732",
  "kind": "theorem",
  "lexical_name": "finprod_count",
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
  "slug": "finprod-count--0ad1b43f71502a92eddb2afc",
  "source": {
    "blob": "f65c944f87f068f921a6e5e7f7d367e6746b8861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 190,
    "path": "GRWTSK/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad1b43f71502a92eddb2afccb758ad82fb22161652fb20b9a8a09c7694998ab",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:524ca806-b024-192a-e9b3-b432cbd79732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_count (I : Ideal R) (hI : I ≠ 0) : (Associates.mk v.asIdeal).count
    (Associates.mk (∏ᶠ v : HeightOneSpectrum R, v.maxPowDividing I)).factors =
    (Associates.mk v.asIdeal).count (Associates.mk I).factors := by
  have h_ne_zero := Associates.finprod_ne_zero I
  have hv : Irreducible (Associates.mk v.asIdeal) := v.associates_irreducible
  have h_dvd := finprod_mem_dvd v (hasFiniteMulSupport hI)
  have h_not_dvd := Ideal.finprod_not_dvd v I hI
  simp only [IsDedekindDomain.HeightOneSpectrum.maxPowDividing] at h_dvd h_ne_zero h_not_dvd
  rw [← Associates.mk_dvd_mk] at h_dvd h_not_dvd
  simp only [Associates.dvd_eq_le] at h_dvd h_not_dvd
  rw [Associates.mk_pow, Associates.prime_pow_dvd_iff_le h_ne_zero hv] at h_dvd h_not_dvd
  rw [not_le] at h_not_dvd
  apply Nat.eq_of_le_of_lt_succ h_dvd h_not_dvd

/-- The ideal `I` equals the finprod `∏_v v^(val_v(I))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variant058713308d2245b9e640893028f340e4fda3f1ab4f2ae996cf7f685b40f21457.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f65c944f87f068f921a6e5e7f7d367e6746b8861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
