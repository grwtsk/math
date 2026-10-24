# RingHom.Finite.tensorProductMap_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e075b40d649c364a50f47ebbe7ce9235b5be7b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 156,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed57c700-7c7a-cf90-9446-7eea89094a1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:470cca25-0ff0-5662-e1d3-2dc96e69bdb4",
  "kind": "lemma",
  "lexical_name": "RingHom.Finite.tensorProductMap_id",
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
  "slug": "ringhom-finite-tensorproductmap-id--fcf0030064cc3b2a0e66a0ae",
  "source": {
    "blob": "7e075b40d649c364a50f47ebbe7ce9235b5be7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcf0030064cc3b2a0e66a0ae9bb10c0ec749682ac376d1fb58e054bf58d89055",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:470cca25-0ff0-5662-e1d3-2dc96e69bdb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma RingHom.Finite.tensorProductMap_id
    {R S S' T : Type*} [CommRing R] [CommRing S] [CommRing T] [CommRing S']
    [Algebra R S] [Algebra R T] [Algebra R S']
    {f : S →ₐ[R] S'} (Hf : f.Finite) :
    (Algebra.TensorProduct.map f (AlgHom.id R T)).toRingHom.Finite := by
  let := f.toRingHom.toAlgebra
  have := IsScalarTower.of_algebraMap_eq' f.comp_algebraMap.symm
  have : Module.Finite S S' := finite_algebraMap.mp Hf
  change (Algebra.TensorProduct.map (Algebra.ofId S S') (AlgHom.id R T)).Finite
  convert_to (((Algebra.TensorProduct.comm _ _ _).trans
      (Algebra.TensorProduct.cancelBaseChange R S S S' T)).toAlgHom.comp
    Algebra.TensorProduct.includeLeft).Finite
  · ext; simp
  exact (RingEquiv.finite _).comp (finite_algebraMap.mpr inferInstance)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e075b40d649c364a50f47ebbe7ce9235b5be7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
