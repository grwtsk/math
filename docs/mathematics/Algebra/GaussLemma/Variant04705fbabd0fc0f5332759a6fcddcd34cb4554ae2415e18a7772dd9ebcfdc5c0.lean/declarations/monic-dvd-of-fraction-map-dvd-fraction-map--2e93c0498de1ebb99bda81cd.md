# Monic.dvd_of_fraction_map_dvd_fraction_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e29f864-f2bb-38a2-4c19-67bcd0eadf13",
  "kind": "theorem",
  "lexical_name": "Monic.dvd_of_fraction_map_dvd_fraction_map",
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
  "slug": "monic-dvd-of-fraction-map-dvd-fraction-map--2e93c0498de1ebb99bda81cd",
  "source": {
    "blob": "c2d0fb579acaad2a9f9ca13a1ec38d477d798578",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 213,
    "path": "GRWTSK/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e93c0498de1ebb99bda81cd30553d9ea656b17bf55d579e7e875585607f1b41",
  "verification": {
    "reference": "docs/verification/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e29f864-f2bb-38a2-4c19-67bcd0eadf13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Monic.dvd_of_fraction_map_dvd_fraction_map [IsIntegrallyClosed R] {p q : R[X]}
    (hp : p.Monic) (hq : q.Monic)
    (h : q.map (algebraMap R K) ∣ p.map (algebraMap R K)) : q ∣ p := by
  obtain ⟨r, hr⟩ := h
  obtain ⟨d', hr'⟩ := IsIntegrallyClosed.eq_map_mul_C_of_dvd K hp (dvd_of_mul_left_eq _ hr.symm)
  rw [Monic.leadingCoeff, C_1, mul_one] at hr'
  rw [← hr', ← Polynomial.map_mul] at hr
  exact dvd_of_mul_right_eq _ (Polynomial.map_injective _ (IsFractionRing.injective R K) hr.symm)
  · exact Monic.of_mul_monic_left (hq.map (algebraMap R K)) (by simpa [← hr] using hp.map _)
#align polynomial.monic.dvd_of_fraction_map_dvd_fraction_map Polynomial.Monic.dvd_of_fraction_map_dvd_fraction_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2d0fb579acaad2a9f9ca13a1ec38d477d798578` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
