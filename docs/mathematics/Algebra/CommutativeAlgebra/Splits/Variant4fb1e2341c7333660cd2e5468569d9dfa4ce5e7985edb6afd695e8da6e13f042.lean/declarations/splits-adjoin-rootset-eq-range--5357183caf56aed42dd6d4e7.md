# Splits.adjoin_rootSet_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a74f7a3cc409ed1bbb5c2bf7c571e44fa5a86865",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 572,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a311a739-3b1a-b47d-45d3-642250ec6b95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5369289a-3413-7426-9f05-da064e59bea3",
  "kind": "theorem",
  "lexical_name": "Splits.adjoin_rootSet_eq_range",
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
  "slug": "splits-adjoin-rootset-eq-range--5357183caf56aed42dd6d4e7",
  "source": {
    "blob": "a74f7a3cc409ed1bbb5c2bf7c571e44fa5a86865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 572,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5357183caf56aed42dd6d4e71dc51e4b6f4681965acc628af9d7628199c62f9a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5369289a-3413-7426-9f05-da064e59bea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 572–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Splits.adjoin_rootSet_eq_range
    (hf : (f.map (algebraMap R A)).Splits) (g : A →ₐ[R] B) :
    Algebra.adjoin R (f.rootSet B) = g.range ↔ Algebra.adjoin R (f.rootSet A) = ⊤ := by
  rw [← hf.image_rootSet g, Algebra.adjoin_image, ← Algebra.map_top]
  exact (Subalgebra.map_injective g.injective).eq_iff

end

section

variable {A B : Type*} [CommRing R] [CommRing A] [IsDomain A] [Algebra R A] [CommRing B]
  [IsDomain B] [Algebra R B] [Algebra A B] [FaithfulSMul A B] [IsScalarTower R A B] {f : R[X]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Splits/Variant4fb1e2341c7333660cd2e5468569d9dfa4ce5e7985edb6afd695e8da6e13f042.lean#L572).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a74f7a3cc409ed1bbb5c2bf7c571e44fa5a86865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
