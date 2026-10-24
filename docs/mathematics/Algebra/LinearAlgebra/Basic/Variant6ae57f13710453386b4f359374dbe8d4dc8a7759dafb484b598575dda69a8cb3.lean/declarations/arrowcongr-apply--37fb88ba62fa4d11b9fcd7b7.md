# arrowCongr_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59249c72-9bf3-e6de-2457-238c6ffba574",
  "kind": "theorem",
  "lexical_name": "arrowCongr_apply",
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
  "slug": "arrowcongr-apply--37fb88ba62fa4d11b9fcd7b7",
  "source": {
    "blob": "4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 704,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37fb88ba62fa4d11b9fcd7b75daf4c2dbc929952024d7b51ce2f47349128716c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59249c72-9bf3-e6de-2457-238c6ffba574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arrowCongr_apply (e₁ : M₁ ≃ₛₗ[σ₁₂] M₂) (e₂ : M₁' ≃ₛₗ[σ₁'₂'] M₂') (f : M₁ →ₛₗ[σ₁₁'] M₁')
    (x : M₂) : arrowCongr e₁ e₂ f x = e₂ (f (e₁.symm x)) :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6ae57f13710453386b4f359374dbe8d4dc8a7759dafb484b598575dda69a8cb3.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4211499574f67bd72e2d428fb8ee9c1ad6a4d9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
