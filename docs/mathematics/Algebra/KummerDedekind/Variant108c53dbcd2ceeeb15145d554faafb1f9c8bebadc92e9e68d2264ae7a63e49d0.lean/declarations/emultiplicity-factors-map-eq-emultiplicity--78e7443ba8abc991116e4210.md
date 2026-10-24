# emultiplicity_factors_map_eq_emultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe5ef008f9f2e170119ac8804ed601be3e50a8e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eeee2ac9-556f-4350-b8ce-fa304304b2f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7e246a8d-ff16-c73f-243f-c9ef0fa33960",
  "kind": "theorem",
  "lexical_name": "emultiplicity_factors_map_eq_emultiplicity",
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
  "slug": "emultiplicity-factors-map-eq-emultiplicity--78e7443ba8abc991116e4210",
  "source": {
    "blob": "fe5ef008f9f2e170119ac8804ed601be3e50a8e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 120,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78e7443ba8abc991116e4210f518d594cb80c7d98f6867d20e97e4312e0207fd",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e246a8d-ff16-c73f-243f-c9ef0fa33960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem emultiplicity_factors_map_eq_emultiplicity
    (hI : IsMaximal I) (hI' : I ≠ ⊥)
    (hx : (conductor R x).comap (algebraMap R S) ⊔ I = ⊤) (hx' : IsIntegral R x) {J : Ideal S}
    (hJ : J ∈ normalizedFactors (I.map (algebraMap R S))) :
    emultiplicity J (I.map (algebraMap R S)) =
      emultiplicity (↑(normalizedFactorsMapEquivNormalizedFactorsMinPolyMk hI hI' hx hx' ⟨J, hJ⟩))
        (Polynomial.map (Ideal.Quotient.mk I) (minpoly R x)) := by
  classical
  rw [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk, Equiv.coe_trans, Function.comp_apply,
    Ideal.emultiplicity_normalizedFactorsEquivSpanNormalizedFactors_symm_eq_emultiplicity,
    IsDedekindDomain.normalizedFactorsEquivOfQuotEquiv_emultiplicity_eq_emultiplicity]

open scoped Classical in
/-- The **Kummer-Dedekind Theorem**. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant108c53dbcd2ceeeb15145d554faafb1f9c8bebadc92e9e68d2264ae7a63e49d0.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5ef008f9f2e170119ac8804ed601be3e50a8e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
