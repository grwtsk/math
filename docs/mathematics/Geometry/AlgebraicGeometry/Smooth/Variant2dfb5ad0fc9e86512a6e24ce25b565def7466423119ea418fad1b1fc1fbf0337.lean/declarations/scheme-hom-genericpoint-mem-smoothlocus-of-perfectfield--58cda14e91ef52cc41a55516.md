# Scheme.Hom.genericPoint_mem_smoothLocus_of_perfectField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f7e165219b50064b861cfbcd07b005cdf3f0ca6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b6272778-3e28-74f1-ac60-132ad4fc3274",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83e551ab-a26d-b8c7-c9a9-60b9259c12c1",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.genericPoint_mem_smoothLocus_of_perfectField",
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
  "slug": "scheme-hom-genericpoint-mem-smoothlocus-of-perfectfield--58cda14e91ef52cc41a55516",
  "source": {
    "blob": "6f7e165219b50064b861cfbcd07b005cdf3f0ca6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 333,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58cda14e91ef52cc41a555168b63adb9a246a858023d04c625146cbd60309bb3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83e551ab-a26d-b8c7-c9a9-60b9259c12c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.genericPoint_mem_smoothLocus_of_perfectField
    {K : Type u} [Field K] [PerfectField K] [IsIntegral X]
    (f : X ⟶ Spec (.of K)) [LocallyOfFinitePresentation f] : genericPoint X ∈ f.smoothLocus := by
  have := LocallyOfFiniteType.stalkMap f (genericPoint X)
  rw [Scheme.Hom.mem_smoothLocus]
  algebraize [(f.stalkMap (genericPoint X)).hom]
  let K' := (Spec.structureSheaf K).presheaf.stalk (f (genericPoint X))
  let e : K ≃ₐ[K] K' := IsLocalization.atUnits _ (f (genericPoint X)).asIdeal.primeCompl
      (fun x hx ↦ by aesop (add simp IsUnit.mem_submonoid_iff))
  have : Algebra.IsAlgebraic K K' :=
    .of_injective e.symm.toAlgHom e.symm.injective
  let : Field K' := (e.toRingEquiv.symm.isField (Field.toIsField K)).toField
  let : Field ((Spec (.of K)).presheaf.stalk (f (genericPoint X))) := this
  have : PerfectField ((Spec (.of K)).presheaf.stalk (f (genericPoint X))) :=
    Algebra.IsAlgebraic.perfectField (K := K)
      (L := (Spec.structureSheaf K).presheaf.stalk (f (genericPoint X)))
  exact Algebra.FormallySmooth.of_perfectField

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Smooth/Variant2dfb5ad0fc9e86512a6e24ce25b565def7466423119ea418fad1b1fc1fbf0337.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f7e165219b50064b861cfbcd07b005cdf3f0ca6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
