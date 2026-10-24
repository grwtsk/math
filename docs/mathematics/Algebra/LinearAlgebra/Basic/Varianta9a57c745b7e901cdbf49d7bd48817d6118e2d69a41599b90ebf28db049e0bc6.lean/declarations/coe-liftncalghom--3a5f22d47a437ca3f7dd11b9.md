# coe_liftNCAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d38a5bea-73ff-180a-d567-0acfbfab61e8",
  "kind": "lemma",
  "lexical_name": "coe_liftNCAlgHom",
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
  "slug": "coe-liftncalghom--3a5f22d47a437ca3f7dd11b9",
  "source": {
    "blob": "acf4e3d53f85753325fdead176fa806be1ba130d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 212,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a5f22d47a437ca3f7dd11b9eb7938b1d46823804a978b35e1439189e8225f98",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d38a5bea-73ff-180a-d567-0acfbfab61e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma coe_liftNCAlgHom (f : A →ₐ[R] B) (g : M →* B) (h_comm) :
    ⇑(liftNCAlgHom f g h_comm) = liftNC f g := rfl

-- The priority must be `high`.
/-- A `R`-algebra homomorphism from `A[M]` is uniquely defined by its
values on the functions `single m 1` and `single 1 a`.

See note [partially-applied ext lemmas]. Note that the first assumption isn't written as an
equality of `MonoidHom`s because `of` doesn't additivise. -/
@[to_additive (dont_translate := R A B) (attr := ext high) /--
A `R`-algebra homomorphism from `A[M]` is uniquely defined by its
values on the functions `single m 1` and `single 1 a`.

See note [partially-applied ext lemmas]. Note that the first assumption isn't written as an
equality of `AddMonoidHom`s because `of` doesn't multiplicativise. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta9a57c745b7e901cdbf49d7bd48817d6118e2d69a41599b90ebf28db049e0bc6.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acf4e3d53f85753325fdead176fa806be1ba130d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
