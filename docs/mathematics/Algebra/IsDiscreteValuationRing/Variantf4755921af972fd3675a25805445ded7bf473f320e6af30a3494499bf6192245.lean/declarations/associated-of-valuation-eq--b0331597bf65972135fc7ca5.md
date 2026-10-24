# associated_of_valuation_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e965010-5917-8784-a00d-244f82cc8435",
  "kind": "theorem",
  "lexical_name": "associated_of_valuation_eq",
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
  "slug": "associated-of-valuation-eq--b0331597bf65972135fc7ca5",
  "source": {
    "blob": "1fbf543a5a8edafae111bef4df856d3b69e397d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 128,
    "path": "GRWTSK/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0331597bf65972135fc7ca562c249cf1b57b4b5d95e3e6ff0152095b46ede13",
  "verification": {
    "reference": "docs/verification/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e965010-5917-8784-a00d-244f82cc8435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_of_valuation_eq (x y : K)
    (h : ((maximalIdeal A).valuation K) x =
    ((maximalIdeal A).valuation K) y) : ∃ u : Aˣ, u • x = y := by
  by_cases hx : x = 0
  · rw [eq_comm] at h
    simp_all
  by_cases hy : y = 0
  · simp_all
  have : (y / x) ∈ MonoidHom.mker (((maximalIdeal A).valuation K)) := by simp_all
  rw [mker_valuation_eq_isUnitSubmonoid] at this
  obtain ⟨u, h⟩ := this
  use IsUnit.unit h.1
  simp only [Units.smul_def, Algebra.smul_def, IsUnit.unit_spec h.1, h.2]
  field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsDiscreteValuationRing/Variantf4755921af972fd3675a25805445ded7bf473f320e6af30a3494499bf6192245.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fbf543a5a8edafae111bef4df856d3b69e397d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
