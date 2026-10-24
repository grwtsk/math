# toSpanUnitSingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a60803807da436c150e8982116c413f56590e7a3b05bc0aec49f39e87e89250",
  "kind": "def",
  "lexical_name": "toSpanUnitSingleton",
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
  "slug": "tospanunitsingleton--36b388ca2576a0d91c7b8dd8",
  "source": {
    "blob": "35c632a20cd662c46df8bc5e46e0ce7778ccfba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36b388ca2576a0d91c7b8dd8f66f3e7ed5e6894bfeeb47b3c88c59ab20ad2412",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a60803807da436c150e8982116c413f56590e7a3b05bc0aec49f39e87e89250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toSpanUnitSingleton (x : E) (hx : ‖x‖ = 1) :
    𝕜 ≃ₗᵢ[𝕜] 𝕜 ∙ x where
  toLinearEquiv := LinearEquiv.toSpanNonzeroSingleton 𝕜 E x (by aesop)
  norm_map' := by
    intro
    rw [LinearEquiv.toSpanNonzeroSingleton_homothety, hx, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variant983e98ab276fd1b750335878e571447206e2f74af80a4cb4d50d72a9f6c4474a.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c632a20cd662c46df8bc5e46e0ce7778ccfba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
