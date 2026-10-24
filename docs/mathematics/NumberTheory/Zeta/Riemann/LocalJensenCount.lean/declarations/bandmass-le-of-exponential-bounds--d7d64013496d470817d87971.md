# bandMass_le_of_exponential_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6071276-c512-7abc-f1f9-3523c947fb22",
  "kind": "theorem",
  "lexical_name": "bandMass_le_of_exponential_bounds",
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
  "slug": "bandmass-le-of-exponential-bounds--d7d64013496d470817d87971",
  "source": {
    "blob": "1ce3a8ed8e9ca331ececc848c9f9b0e912015791",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 191,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7d64013496d470817d87971dc142731b8ebfbda0d25f44c02fe19bf9d0ad615",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6071276-c512-7abc-f1f9-3523c947fb22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bandMass_le_of_exponential_bounds (N : ℕ) (hN : 2 ≤ N) (A C : ℝ)
    (hA : 0 ≤ A)
    (hcp : Real.exp (-C) ≤ ‖riemannZeta (upperCenter N)‖)
    (hcm : Real.exp (-C) ≤ ‖riemannZeta (lowerCenter N)‖)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Real.exp A)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ), ‖riemannZeta z‖ ≤ Real.exp A) :
    (bandMass N : ℝ) ≤ 2 * (A + C) / Real.log (6 / 5 : ℝ) := by
  have hb := bandMass_le_of_modulus_bounds N hN (Real.exp A) (Real.exp (-C))
    (by simpa only [Real.exp_zero] using Real.exp_le_exp.mpr hA) (Real.exp_pos _) hcp hcm hp hm
  simpa only [← Real.exp_sub, Real.log_exp, sub_neg_eq_add] using hb

/-- Any proved mass bound improves the maintained clearance; no new height sequence is selected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LocalJensenCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LocalJensenCount.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ce3a8ed8e9ca331ececc848c9f9b0e912015791` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
