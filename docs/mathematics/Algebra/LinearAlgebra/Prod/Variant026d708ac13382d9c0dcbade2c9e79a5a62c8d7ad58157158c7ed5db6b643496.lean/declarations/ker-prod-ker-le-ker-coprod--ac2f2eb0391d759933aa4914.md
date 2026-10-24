# ker_prod_ker_le_ker_coprod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dce8798-533a-fd04-bb3a-9dbb65c6a37f",
  "kind": "theorem",
  "lexical_name": "ker_prod_ker_le_ker_coprod",
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
  "slug": "ker-prod-ker-le-ker-coprod--ac2f2eb0391d759933aa4914",
  "source": {
    "blob": "73c2962126dbf9737027865b40d15fb0536251ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 468,
    "path": "GRWTSK/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac2f2eb0391d759933aa49140a73bd3cd9d5efc862f98c5c7156697deb61c48c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dce8798-533a-fd04-bb3a-9dbb65c6a37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 468–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_prod_ker_le_ker_coprod {M₂ : Type*} [AddCommMonoid M₂] [Module R M₂] {M₃ : Type*}
    [AddCommMonoid M₃] [Module R M₃] (f : M →ₗ[R] M₃) (g : M₂ →ₗ[R] M₃) :
    (ker f).prod (ker g) ≤ ker (f.coprod g) := by
  rintro ⟨y, z⟩
  simp +contextual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Prod/Variant026d708ac13382d9c0dcbade2c9e79a5a62c8d7ad58157158c7ed5db6b643496.lean#L468).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73c2962126dbf9737027865b40d15fb0536251ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
