# coprimeDensity_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfc43126-054f-f757-290d-0c1e3e1f2b00",
  "kind": "theorem",
  "lexical_name": "coprimeDensity_le_one",
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
  "slug": "coprimedensity-le-one--848bd0bef4d82428ba64641b",
  "source": {
    "blob": "5f8dd8dc7e4bc54d6a738d693dcb40e932c7846d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 143,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:848bd0bef4d82428ba64641b995da8876216bdcf20b56d41717ed4da05373a31",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfc43126-054f-f757-290d-0c1e3e1f2b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprimeDensity_le_one (h : ℕ) (hh : 1 ≤ h) : coprimeDensity h ≤ 1 := by
  have hh0 : (0 : ℝ) < h := by exact_mod_cast (show 0 < h by omega)
  apply (mul_le_mul_iff_left₀ hh0).mp
  rw [← coprimeCount_period h hh, one_mul]
  exact_mod_cast coprimeCount_le h h

end
end CoprimeCountScratch

#print axioms CoprimeCountScratch.coprimeCount
#print axioms CoprimeCountScratch.coprimeDensity
#print axioms CoprimeCountScratch.sum_moebius_divisors
#print axioms CoprimeCountScratch.coprime_indicator_eq
#print axioms CoprimeCountScratch.positive_multiples_card
#print axioms CoprimeCountScratch.coprimeCount_eq_moebius_floor

#print axioms CoprimeCountScratch.natural_division_error
#print axioms CoprimeCountScratch.coprimeCount_error_le

#print axioms CoprimeCountScratch.coprimeCount_period

#print axioms CoprimeCountScratch.coprimeCount_le

#print axioms CoprimeCountScratch.coprimeDensity_nonneg

#print axioms CoprimeCountScratch.coprimeDensity_le_one
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/CoprimeCount/Variant906d9e561d015adc59e33f90c4d8f783f6fa54dcd91bb96d87a16c6fdf12d9a7.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f8dd8dc7e4bc54d6a738d693dcb40e932c7846d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
