# norm_add_sq_eq_norm_sq_add_norm_sq_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e66b511-e526-c2c6-4205-e59293e53ecf",
  "kind": "theorem",
  "lexical_name": "norm_add_sq_eq_norm_sq_add_norm_sq_real",
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
  "slug": "norm-add-sq-eq-norm-sq-add-norm-sq-real--b17c3bbd76cf6b36194cecaa",
  "source": {
    "blob": "fe0b40c10ae995e75e59bb4387ec36d450a5abde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1492,
    "line": 1486,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b17c3bbd76cf6b36194cecaaa4ff2be773997416c739a176ce7b4c8ae8fa9779",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e66b511-e526-c2c6-4205-e59293e53ecf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1486–1492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_add_sq_eq_norm_sq_add_norm_sq_real {x y : F} (h : ⟪x, y⟫_ℝ = 0) :
    ‖x + y‖ * ‖x + y‖ = ‖x‖ * ‖x‖ + ‖y‖ * ‖y‖ :=
  (norm_add_sq_eq_norm_sq_add_norm_sq_iff_real_inner_eq_zero x y).2 h
#align norm_add_sq_eq_norm_sq_add_norm_sq_real norm_add_sq_eq_norm_sq_add_norm_sq_real

/-- Pythagorean theorem, subtracting vectors, if-and-only-if vector
inner product form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant28f485fbfb0f55ad5d73e1d562862f73442da2680ad57a82ece86e77e8c8dfbe.lean#L1486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe0b40c10ae995e75e59bb4387ec36d450a5abde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
