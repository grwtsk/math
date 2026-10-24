# toRingHom_ofClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a7875b1-2aeb-1b99-a0f3-67ca308f43eb",
  "kind": "lemma",
  "lexical_name": "toRingHom_ofClass",
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
  "slug": "toringhom-ofclass--3e11155160bc329593e7e312",
  "source": {
    "blob": "9eac7038485f8db6de7eb170d858b62bb54dd2b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 423,
    "path": "GRWTSK/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e11155160bc329593e7e312f14893635e8339b3a8bad22e50eea4060c016feb",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a7875b1-2aeb-1b99-a0f3-67ca308f43eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toRingHom_ofClass {R A B : Type*} [CommSemiring R] [Semiring A] [Semiring B] [Algebra R A]
    [Algebra R B] {F : Type*} [FunLike F A B] [AlgHomClass F R A B] (f : F) :
    RingHomClass.toRingHom (AlgHom.ofClass f) = RingHomClass.toRingHom f := rfl

@[deprecated (since := "2026-09-08")] alias toRingHom_toAlgHom := toRingHom_ofClass

end AlgHomClass

namespace RingHom

variable {R S : Type*}

/-- Reinterpret a `RingHom` as an `ℕ`-algebra homomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variant986a2d269ac403a124f3b6a2043932f6a714b419cd012c52973b91f55311304e.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eac7038485f8db6de7eb170d858b62bb54dd2b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
