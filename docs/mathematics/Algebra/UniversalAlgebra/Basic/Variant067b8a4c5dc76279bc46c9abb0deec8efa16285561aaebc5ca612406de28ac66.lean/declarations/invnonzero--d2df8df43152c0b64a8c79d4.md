# invNonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb58eedc04e57b876ff209067a437f05db3115abee6473aa261379287fd36e6d",
  "kind": "def",
  "lexical_name": "invNonzero",
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
  "slug": "invnonzero--d2df8df43152c0b64a8c79d4",
  "source": {
    "blob": "56cdac95e948a2869941c643f4530564b80ff353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 418,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2df8df43152c0b64a8c79d4b761acb6b17d2829ca69d6881cb04054b2380508",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb58eedc04e57b876ff209067a437f05db3115abee6473aa261379287fd36e6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invNonzero (I : IntervalRatNonzero) : IntervalRat :=
  if h : 0 < I.lo then
    -- Positive interval: [1/hi, 1/lo]
    { lo := I.hi⁻¹
      hi := I.lo⁻¹
      le := by
        have hlo : (0 : ℚ) < I.lo := h
        have hhi : (0 : ℚ) < I.hi := lt_of_lt_of_le hlo I.le
        exact inv_anti₀ hlo I.le }
  else
    -- Negative interval: [1/hi, 1/lo] (both negative)
    { lo := I.hi⁻¹
      hi := I.lo⁻¹
      le := by
        have hlo_le : I.lo ≤ 0 := le_of_not_gt h
        have hhi_neg : I.hi < 0 := by
          have hnz := I.nonzero
          simp only [containsZero, not_and, not_le] at hnz
          exact hnz hlo_le
        have hlo_neg : I.lo < 0 := lt_of_le_of_lt I.le hhi_neg
        exact (inv_le_inv_of_neg hhi_neg hlo_neg).mpr I.le }

/-! ### FTIA for inversion -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56cdac95e948a2869941c643f4530564b80ff353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
