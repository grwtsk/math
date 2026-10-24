# algebraMap_restrictHom_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9c0bad6a4da7cefc171b83847692d418d6865bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 452,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91db6717-2303-a5ac-a09d-004e6120b830",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18facfb5-1a30-de0c-22fb-a8bba0fb394d",
  "kind": "theorem",
  "lexical_name": "algebraMap_restrictHom_smul",
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
  "slug": "algebramap-restricthom-smul--64486557ba06190e8771fe5b",
  "source": {
    "blob": "f9c0bad6a4da7cefc171b83847692d418d6865bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 452,
    "path": "GRWTSK/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64486557ba06190e8771fe5bcd2b41b4f3e7a77c31460d5d2dec05bcbb6968d4",
  "verification": {
    "reference": "docs/verification/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18facfb5-1a30-de0c-22fb-a8bba0fb394d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 452–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_restrictHom_smul [Finite G] [Finite G'] [MulSemiringAction G C]
    [IsGaloisGroup G A C] [MulSemiringAction G' B] [IsGaloisGroup G' A B] (g : G) (x : B) :
    algebraMap B C (restrictHom G G' A B C g • x) = g • algebraMap B C x := by
  let A := (algebraMap A B).range
  have : IsDomain B := IsDomain.of_faithfulSMul B C
  let : MulSemiringAction G (FractionRing C) :=
    IsFractionRing.mulSemiringAction G C (FractionRing C)
  let : MulSemiringAction G' (FractionRing B) :=
    IsFractionRing.mulSemiringAction G' B (FractionRing B)
  apply FaithfulSMul.algebraMap_injective C (FractionRing C)
  rw [← IsScalarTower.algebraMap_apply,
    IsScalarTower.algebraMap_apply B (FractionRing B) (FractionRing C)]
  simp only [restrictHom, MulEquiv.toMonoidHom_eq_coe, MonoidHom.coe_comp, MonoidHom.coe_coe,
    QuotientGroup.coe_mk', Function.comp_apply]
  rw [algebraMap.smul', algebraMap_quotientMulEquiv_smul, ← IsScalarTower.algebraMap_apply,
    algebraMap.smul', ← IsScalarTower.algebraMap_apply]

attribute [local instance] FractionRing.liftAlgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean#L452).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9c0bad6a4da7cefc171b83847692d418d6865bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
