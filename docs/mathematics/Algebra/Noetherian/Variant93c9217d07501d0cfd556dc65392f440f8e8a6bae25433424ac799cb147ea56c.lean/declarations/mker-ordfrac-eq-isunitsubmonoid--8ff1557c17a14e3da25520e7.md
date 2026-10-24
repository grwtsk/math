# mker_ordFrac_eq_isUnitSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b527bbd0-6164-0e50-a4fb-608a6e278c99",
  "kind": "lemma",
  "lexical_name": "mker_ordFrac_eq_isUnitSubmonoid",
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
  "slug": "mker-ordfrac-eq-isunitsubmonoid--8ff1557c17a14e3da25520e7",
  "source": {
    "blob": "bf779adabbaf3ee0e360338f745e02865bcf0f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 207,
    "path": "GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ff1557c17a14e3da25520e7bc4cde8bb8faf4f45badd011749269ab0fa25339",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b527bbd0-6164-0e50-a4fb-608a6e278c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mker_ordFrac_eq_isUnitSubmonoid :
    MonoidHom.mker (ordFrac R) = (IsUnit.submonoid R).map (algebraMap R K) := by
  rw [ordFrac_eq_inverse_comp_valuation, ← MonoidWithZeroHom.comap_mker,
      MonoidWithZeroHom.mker_inverse]
  exact IsDiscreteValuationRing.mker_valuation_eq_isUnitSubmonoid

/--
For `x y : R`, if `x + y ≠ 0` then `min (ordFrac R x) (ordFrac R y) ≤ ordFrac R (x + y)`. The
condition that `x + y ≠ 0` is used to guarantee that all the elements we're taking `ordFrac` of
are nonzero, meaning none of them will be `0` in `ℤᵐ⁰`. This allows us to use `ord_add` (which
uses the ordering on `ℕ∞`), since these orders correspond on non `⊤` elements.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variant93c9217d07501d0cfd556dc65392f440f8e8a6bae25433424ac799cb147ea56c.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf779adabbaf3ee0e360338f745e02865bcf0f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
