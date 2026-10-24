# centered_divisor_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd1767ea-8aee-79f0-6cd0-24980be2411f",
  "kind": "theorem",
  "lexical_name": "centered_divisor_identity",
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
  "slug": "centered-divisor-identity--23fb1fd1cc8867ab7616d1db",
  "source": {
    "blob": "ae8c48dccb17d24599ded8b8b530a78c12400cbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23fb1fd1cc8867ab7616d1db63e4c9584c6bcd58476b4a81e9541ef487775440",
  "verification": {
    "reference": "docs/verification/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd1767ea-8aee-79f0-6cd0-24980be2411f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_divisor_identity :
    (ζ : ArithmeticFunction ℝ) * centeredMangoldt =
      ArithmeticFunction.log - ζ * ζ + ζ := by
  have h : ArithmeticFunction.vonMangoldt = (μ : ArithmeticFunction ℝ) *
      ArithmeticFunction.log := ArithmeticFunction.moebius_mul_log_eq_vonMangoldt.symm
  unfold centeredMangoldt
  rw [h]
  calc
    _ = ((ζ : ArithmeticFunction ℝ) * μ) * ArithmeticFunction.log - ζ * ζ + ζ := by ring
    _ = _ := by rw [ArithmeticFunction.coe_zeta_mul_coe_moebius]; ring

/-- The correction gauge transfers signed work between joined ports without deleting it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CenteredVaughan/Variant777e878c7caa8bf2ba8d508068d2bbe0517aff0dff39475c3c5dcf912447ef83.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae8c48dccb17d24599ded8b8b530a78c12400cbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
