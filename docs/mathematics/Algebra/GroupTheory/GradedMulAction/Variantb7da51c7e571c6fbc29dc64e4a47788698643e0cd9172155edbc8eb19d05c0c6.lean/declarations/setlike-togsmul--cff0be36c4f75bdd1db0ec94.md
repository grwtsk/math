# SetLike.toGSmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c488f9368d36bc9404a713e28655a449d53f1b1e9c08e1b31b93dd89a8b19a3b",
  "kind": "instance",
  "lexical_name": "SetLike.toGSmul",
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
  "slug": "setlike-togsmul--cff0be36c4f75bdd1db0ec94",
  "source": {
    "blob": "9c18189892bc7c12ffcae5a295c61ffbead16fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 121,
    "path": "GRWTSK/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cff0be36c4f75bdd1db0ec94f8cd7ebfe9595e81280ebe5e3f52d0c64ae13d74",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c488f9368d36bc9404a713e28655a449d53f1b1e9c08e1b31b93dd89a8b19a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance SetLike.toGSmul {S R N M : Type*} [SetLike S R] [SetLike N M] [SMul R M] [Add ι]
    (A : ι → S) (B : ι → N) [SetLike.GradedSmul A B] :
    GradedMonoid.GSmul (fun i ↦ A i) fun i ↦ B i
    where smul a b := ⟨a.1 • b.1, SetLike.GradedSmul.smul_mem a.2 b.2⟩
#align set_like.ghas_smul SetLike.toGSmul

/-
Porting note: simpNF linter returns
"Left-hand side does not simplify, when using the simp lemma on itself."
However, simp does indeed solve the following. Possibly related std#71,std#78
example {S R N M : Type*} [SetLike S R] [SetLike N M] [SMul R M] [Add ι]
    (A : ι → S) (B : ι → N) [SetLike.GradedSmul A B] {i j : ι} (x : A i) (y : B j) :
    (@GradedMonoid.GSmul.smul ι (fun i ↦ A i) (fun i ↦ B i) _ _ i j x y : M) = x.1 • y.1 := by simp
-/
@[simp,nolint simpNF]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/GradedMulAction/Variantb7da51c7e571c6fbc29dc64e4a47788698643e0cd9172155edbc8eb19d05c0c6.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c18189892bc7c12ffcae5a295c61ffbead16fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
