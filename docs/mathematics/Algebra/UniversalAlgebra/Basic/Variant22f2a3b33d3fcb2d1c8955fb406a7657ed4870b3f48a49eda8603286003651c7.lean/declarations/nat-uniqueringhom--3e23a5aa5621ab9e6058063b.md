# Nat.uniqueRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa8ffaf00646898c03de068ea47f693298fbdc3414d87c8464642996625b8137",
  "kind": "instance",
  "lexical_name": "Nat.uniqueRingHom",
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
  "slug": "nat-uniqueringhom--3e23a5aa5621ab9e6058063b",
  "source": {
    "blob": "135d0d84862edcaa2cec92727631ffd6062db41a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 328,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e23a5aa5621ab9e6058063b6877f9a6496e074c0422b415cb2a7b853c3225fb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa8ffaf00646898c03de068ea47f693298fbdc3414d87c8464642996625b8137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 328–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Nat.uniqueRingHom {R : Type*} [NonAssocSemiring R] : Unique (ℕ →+* R) where
  default := Nat.castRingHom R
  uniq := RingHom.eq_natCast'

namespace Pi

variable {π : α → Type*} [∀ a, NatCast (π a)]

/- Porting note: manually wrote this instance.
Was `by refine_struct { .. } <;> pi_instance_derive_field` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant22f2a3b33d3fcb2d1c8955fb406a7657ed4870b3f48a49eda8603286003651c7.lean#L328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135d0d84862edcaa2cec92727631ffd6062db41a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
