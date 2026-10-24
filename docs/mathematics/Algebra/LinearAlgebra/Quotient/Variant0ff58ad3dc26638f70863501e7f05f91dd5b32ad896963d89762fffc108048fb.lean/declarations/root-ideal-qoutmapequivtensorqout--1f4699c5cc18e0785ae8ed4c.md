# _root_.Ideal.qoutMapEquivTensorQout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b93a802e0a91bf6af29a75443dd82e35b1be2a4cf5bc03c00385c44cabf4b0a",
  "kind": "def",
  "lexical_name": "_root_.Ideal.qoutMapEquivTensorQout",
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
  "slug": "root-ideal-qoutmapequivtensorqout--1f4699c5cc18e0785ae8ed4c",
  "source": {
    "blob": "8a53f64ebacfd0b4ea90cac0d28ab2bd3fe4b936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 237,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0ff58ad3dc26638f70863501e7f05f91dd5b32ad896963d89762fffc108048fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f4699c5cc18e0785ae8ed4c6950cfc09ff35cac9136d7c843e992901d1b67b1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant0ff58ad3dc26638f70863501e7f05f91dd5b32ad896963d89762fffc108048fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b93a802e0a91bf6af29a75443dd82e35b1be2a4cf5bc03c00385c44cabf4b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def _root_.Ideal.qoutMapEquivTensorQout {I : Ideal R} :
    (S ⧸ I.map (algebraMap R S)) ≃ₗ[S] S ⊗[R] (R ⧸ I) where
  __ := LinearEquiv.symm <| tensorQuotEquivQuotSMul S I ≪≫ₗ Submodule.quotEquivOfEq _ _ (by simp)
    ≪≫ₗ Submodule.Quotient.restrictScalarsEquiv R _
  map_smul' := by
    rintro _ ⟨_⟩
    congr

variable (M) in
/-- Let `R` be a commutative ring, `S` be an `R`-algebra, `I` is be ideal of `R`,
  then `S ⊗[R] M ⧸ I(S ⊗[R] M)` is isomorphic to `S ⊗[R] (M ⧸ IM)` as `S` modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant0ff58ad3dc26638f70863501e7f05f91dd5b32ad896963d89762fffc108048fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant0ff58ad3dc26638f70863501e7f05f91dd5b32ad896963d89762fffc108048fb.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a53f64ebacfd0b4ea90cac0d28ab2bd3fe4b936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
