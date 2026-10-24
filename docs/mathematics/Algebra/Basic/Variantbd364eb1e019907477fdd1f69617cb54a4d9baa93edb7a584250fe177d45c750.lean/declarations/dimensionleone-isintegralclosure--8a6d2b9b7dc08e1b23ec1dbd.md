# DimensionLEOne.isIntegralClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bba27a4a7729ff262ce365467f697fbb4b976950",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd0bcb51-0552-7392-d1af-7e67c83c230a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:67ad688c-dc48-9a67-28c6-2c2ca5f25cff",
  "kind": "theorem",
  "lexical_name": "DimensionLEOne.isIntegralClosure",
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
  "slug": "dimensionleone-isintegralclosure--8a6d2b9b7dc08e1b23ec1dbd",
  "source": {
    "blob": "bba27a4a7729ff262ce365467f697fbb4b976950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 66,
    "path": "GRWTSK/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a6d2b9b7dc08e1b23ec1dbd81e98c547982e115cce7decabcd77f8484fbc3b2",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67ad688c-dc48-9a67-28c6-2c2ca5f25cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem DimensionLEOne.isIntegralClosure (B : Type*) [CommRing B] [IsDomain B] [Nontrivial R]
    [Algebra R A] [Algebra R B] [Algebra B A] [IsScalarTower R B A] [IsIntegralClosure B R A]
    [DimensionLEOne R] : DimensionLEOne B where
  maximalOfPrime := fun {p} ne_bot _ =>
    IsIntegralClosure.isMaximal_of_isMaximal_comap (R := R) A p
      (Ideal.IsPrime.isMaximal inferInstance (IsIntegralClosure.comap_ne_bot A ne_bot))
#align ring.dimension_le_one.is_integral_closure Ring.DimensionLEOne.isIntegralClosure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantbd364eb1e019907477fdd1f69617cb54a4d9baa93edb7a584250fe177d45c750.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bba27a4a7729ff262ce365467f697fbb4b976950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
