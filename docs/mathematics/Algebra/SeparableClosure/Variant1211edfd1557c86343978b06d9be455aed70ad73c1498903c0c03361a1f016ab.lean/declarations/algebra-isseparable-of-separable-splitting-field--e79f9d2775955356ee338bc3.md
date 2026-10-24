# Algebra.isSeparable_of_separable_splitting_field

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79f8ce0c9be18f28045cc36cb22d99038413639b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 192,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bd54b54-8a78-9b87-4a66-779f8cd9a8fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:955c3e38-543e-5c4a-9c62-b693adc6d6e7",
  "kind": "theorem",
  "lexical_name": "Algebra.isSeparable_of_separable_splitting_field",
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
  "slug": "algebra-isseparable-of-separable-splitting-field--e79f9d2775955356ee338bc3",
  "source": {
    "blob": "79f8ce0c9be18f28045cc36cb22d99038413639b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 192,
    "path": "GRWTSK/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e79f9d2775955356ee338bc34a969b312b13114b2f2c6c511e10a9c1a9990a97",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:955c3e38-543e-5c4a-9c62-b693adc6d6e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Algebra.isSeparable_of_separable_splitting_field {p : F[X]}
    [sp : p.IsSplittingField F E] (hp : p.Separable) : Algebra.IsSeparable F E := by
  rw [← isSeparable_top, ← (isSplittingField_iff_intermediateField.mp sp).2,
    isSeparable_adjoin_iff_isSeparable]
  exact fun x hx ↦ hp.of_dvd (minpoly.dvd F x (aeval_eq_zero_of_mem_rootSet hx))

/-- The separable closure of `F` in `E` is equal to `E` if and only if `E / F` is
separable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableClosure/Variant1211edfd1557c86343978b06d9be455aed70ad73c1498903c0c03361a1f016ab.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f8ce0c9be18f28045cc36cb22d99038413639b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
