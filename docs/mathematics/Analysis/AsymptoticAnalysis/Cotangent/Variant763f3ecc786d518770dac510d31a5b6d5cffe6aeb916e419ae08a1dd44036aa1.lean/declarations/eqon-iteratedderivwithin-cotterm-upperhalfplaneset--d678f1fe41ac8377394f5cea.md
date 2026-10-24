# eqOn_iteratedDerivWithin_cotTerm_upperHalfPlaneSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b157bd7c14c7e40361c348c154893fc76df19a5b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e81cb2be-b95e-8512-4d3c-f44331d8c8e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cad82945-45c0-1f02-2c93-9ee236d3a824",
  "kind": "lemma",
  "lexical_name": "eqOn_iteratedDerivWithin_cotTerm_upperHalfPlaneSet",
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
  "slug": "eqon-iteratedderivwithin-cotterm-upperhalfplaneset--d678f1fe41ac8377394f5cea",
  "source": {
    "blob": "b157bd7c14c7e40361c348c154893fc76df19a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 274,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d678f1fe41ac8377394f5cea79e2c830ba21d69aa16cf05848988c20860b7b3f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cad82945-45c0-1f02-2c93-9ee236d3a824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eqOn_iteratedDerivWithin_cotTerm_upperHalfPlaneSet (d : ℕ) :
    EqOn
      (iteratedDerivWithin k (fun z ↦ cotTerm z d) ℍₒ)
      (fun z ↦ (-1) ^ k * k ! * ((z + (d + 1)) ^ (-1 - k : ℤ) + (z - (d + 1)) ^ (-1 - k : ℤ)))
      ℍₒ := by
  apply Set.EqOn.trans (upperHalfPlane_inter_integerComplement ▸
    iteratedDerivWithin_congr_right_of_isOpen (fun z ↦ cotTerm z d) k
    isOpen_upperHalfPlaneSet (isOpen_compl_range_intCast))
  intro z hz
  simpa using! eqOn_iteratedDerivWithin_cotTerm_integerComplement k d
    (coe_mem_integerComplement ⟨z, hz⟩)

open EisensteinSeries in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Cotangent/Variant763f3ecc786d518770dac510d31a5b6d5cffe6aeb916e419ae08a1dd44036aa1.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b157bd7c14c7e40361c348c154893fc76df19a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
