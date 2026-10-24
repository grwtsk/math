# RingHom.Finite.tensorProductMap

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
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34aff49a-bbf7-3f50-078c-c60980279e3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f2d1919-99b5-35f8-a12e-0c14766b5cac",
  "kind": "lemma",
  "lexical_name": "RingHom.Finite.tensorProductMap",
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
  "slug": "ringhom-finite-tensorproductmap--919dc6459dc02e903d7845f0",
  "source": {
    "blob": "7e075b40d649c364a50f47ebbe7ce9235b5be7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:919dc6459dc02e903d7845f0909b8ca033086372e9c72ca659ad5d284737bae1",
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

Occurrence: `result:0f2d1919-99b5-35f8-a12e-0c14766b5cac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RingHom.Finite.tensorProductMap
    {R S S' T T' : Type*} [CommRing R] [CommRing S] [CommRing T] [CommRing S'] [CommRing T']
    [Algebra R S] [Algebra R T] [Algebra R S'] [Algebra R T']
    {f : S →ₐ[R] S'} (Hf : f.Finite) {g : T →ₐ[R] T'} (Hg : g.Finite) :
    (Algebra.TensorProduct.map f g).toRingHom.Finite := by
  convert!
    RingHom.Finite.tensorProductMap_id (T := T') Hf |>.comp <|
      (Algebra.TensorProduct.comm _ _ _).toRingEquiv.finite |>.comp <|
        RingHom.Finite.tensorProductMap_id (T := S) Hg |>.comp <|
          (Algebra.TensorProduct.comm _ _ _).toRingEquiv.finite
  simp only [AlgHom.toRingHom_eq_coe, RingEquiv.toRingHom_eq_coe,
    AlgEquiv.toRingEquiv_toRingHom, ← AlgEquiv.toAlgHom_toRingHom, ← AlgHom.comp_toRingHom]
  congr
  ext <;> simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant97f6e8845c93b4c346b21ce24a2e640d9982b0ced42a6829d8e157beee9a25b4.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e075b40d649c364a50f47ebbe7ce9235b5be7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
