# prodEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ca82edd8845cd362c9408f98991c1e4e9362cb7a00eb3892bda67e89240c783",
  "kind": "def",
  "lexical_name": "prodEquiv",
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
  "slug": "prodequiv--82bfe3f70c6975d40259cef7",
  "source": {
    "blob": "24e32e54040cb901ba28cc014c0d2cb96cd8801f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 674,
    "path": "GRWTSK/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82bfe3f70c6975d40259cef7b87d4b6b3abe44047aa4cb58a427495b8578411c",
  "verification": {
    "reference": "docs/verification/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ca82edd8845cd362c9408f98991c1e4e9362cb7a00eb3892bda67e89240c783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodEquiv : (A →⋆ₐ[R] B) × (A →⋆ₐ[R] C) ≃ (A →⋆ₐ[R] B × C)
    where
  toFun f := f.1.prod f.2
  invFun f := ((fst _ _ _).comp f, (snd _ _ _).comp f)
  left_inv f := by ext <;> rfl
  right_inv f := by ext <;> rfl
#align star_alg_hom.prod_equiv StarAlgHom.prodEquiv

end StarAlgHom

/-! ### Star algebra equivalences -/

-- Porting note: changed order of arguments to work around
-- [https://github.com/leanprover-community/mathlib4/issues/2505]
/-- A *⋆-algebra* equivalence is an equivalence preserving addition, multiplication, scalar
multiplication and the star operation, which allows for considering both unital and non-unital
equivalences with a single structure. Currently, `AlgEquiv` requires unital algebras, which is
why this structure does not extend it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StarAlgHom/Variant94e85fe20242d6e5a54634c01d7e71a8481dfb5c8ab4af993973016cd58f99e0.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e32e54040cb901ba28cc014c0d2cb96cd8801f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
