# congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e14f3c323ccaf4e66dbccf2c8186b30bc2167e8f430499c197e7e8b385b1824",
  "kind": "def",
  "lexical_name": "congr",
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
  "slug": "congr--a210e3bbc28a4d6946fabc10",
  "source": {
    "blob": "a128a867aa6c1cf0b3fe9b1133327ecfee314d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 248,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a210e3bbc28a4d6946fabc10cb5ed92d6c1c35e37b6bec8eeac1bc8c8270a3f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e14f3c323ccaf4e66dbccf2c8186b30bc2167e8f430499c197e7e8b385b1824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def congr (f : M ≃ₗ[A] P) (g : N ≃ₗ[R] Q) : (M ⊗[R] N) ≃ₗ[A] (P ⊗[R] Q) :=
  LinearEquiv.ofLinear (map f g) (map f.symm g.symm)
    (ext fun _m _n => congr_arg₂ (· ⊗ₜ ·) (f.apply_symm_apply _) (g.apply_symm_apply _))
    (ext fun _m _n => congr_arg₂ (· ⊗ₜ ·) (f.symm_apply_apply _) (g.symm_apply_apply _))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a128a867aa6c1cf0b3fe9b1133327ecfee314d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
