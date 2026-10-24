# source_zero_radical_mul_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1c4cdf7ad684e9fc067e821002c0877fcfa29f0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 409,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d082fbc0-105d-67ba-55f1-f059b9de767c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:06d421c9-04e9-8409-2ba1-d67493f9a66f",
  "kind": "theorem",
  "lexical_name": "source_zero_radical_mul_eq_zero",
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
  "slug": "source-zero-radical-mul-eq-zero--3babd9be1eba485bfa22ab2f",
  "source": {
    "blob": "a1c4cdf7ad684e9fc067e821002c0877fcfa29f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 409,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3babd9be1eba485bfa22ab2f9d0d1542f9998fff344e6e943474294957a6bb30",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06d421c9-04e9-8409-2ba1-d67493f9a66f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_zero_radical_mul_eq_zero (A : ℝ) {x y : LowerPowerZeroFiber A}
    (hx : x ∈ Ring.jacobson (LowerPowerZeroFiber A))
    (hy : y ∈ Ring.jacobson (LowerPowerZeroFiber A)) : x * y = 0 := by
  have hx' : (sourceZeroEquiv A).symm x ∈ Ring.jacobson
      (LowerPowerCharacteristicFiber A 0) := by
    rw [← source_zero_equiv_comap_jacobson, Ideal.mem_comap]
    simpa using hx
  have hy' : (sourceZeroEquiv A).symm y ∈ Ring.jacobson
      (LowerPowerCharacteristicFiber A 0) := by
    rw [← source_zero_equiv_comap_jacobson, Ideal.mem_comap]
    simpa using hy
  simpa using congrArg (sourceZeroEquiv A) (source_characteristic_radical_mul_eq_zero A 0 hx' hy')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCharacteristicInventory/Variante76deb3ed8898d66867457a4dc2609ca228ea020448c500c3763528d6a022349.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c4cdf7ad684e9fc067e821002c0877fcfa29f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
