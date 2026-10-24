# num_den_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41e1cc4e-54c6-a4c9-9896-b7e848bda1ac",
  "kind": "theorem",
  "lexical_name": "num_den_mk",
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
  "slug": "num-den-mk--3cb0dfcec5a3b3c0c36bb7eb",
  "source": {
    "blob": "66077b1e0338e339e3217ada594ed979aff95f74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 42,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cb0dfcec5a3b3c0c36bb7eb6a62ad8ae77489294e84780d679af37eb4d85d90",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e1cc4e-54c6-a4c9-9896-b7e848bda1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem num_den_mk {q : ℚ} {n d : ℤ} (hd : d ≠ 0) (qdf : q = n /. d) :
    ∃ c : ℤ, n = c * q.num ∧ d = c * q.den := by
  obtain rfl | hn := eq_or_ne n 0
  · simp [qdf]
  have : q.num * d = n * ↑q.den := by
    refine (divInt_eq_iff ?_ hd).mp ?_
    · exact Int.natCast_ne_zero.mpr (Rat.den_nz _)
    · rwa [num_divInt_den]
  have hqdn : q.num ∣ n := by
    rw [qdf]
    exact Rat.num_dvd _ hd
  refine ⟨n / q.num, ?_, ?_⟩
  · rw [Int.ediv_mul_cancel hqdn]
  · refine Int.eq_mul_div_of_mul_eq_mul_of_dvd_left ?_ hqdn this
    rw [qdf]
    exact Rat.num_ne_zero.2 ((divInt_ne_zero hd).mpr hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantcd1f2d53ee451ccf293aa8d2019526a5d6ea1442c317b1f4d280307a61beb0a8.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66077b1e0338e339e3217ada594ed979aff95f74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
