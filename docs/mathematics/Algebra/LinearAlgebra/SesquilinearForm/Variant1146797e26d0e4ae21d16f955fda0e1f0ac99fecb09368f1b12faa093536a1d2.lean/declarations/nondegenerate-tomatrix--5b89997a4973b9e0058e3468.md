# Nondegenerate.toMatrix₂'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:098f805d-3172-a6f2-b191-65baf127e155",
  "kind": "theorem",
  "lexical_name": "Nondegenerate.toMatrix₂'",
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
  "slug": "nondegenerate-tomatrix--5b89997a4973b9e0058e3468",
  "source": {
    "blob": "42bae6dc806fc117d684dd10ca0235f0250a36f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 736,
    "path": "GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b89997a4973b9e0058e34683a608aafdcc7df63c29947ae22dc5b40c0673aaa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:098f805d-3172-a6f2-b191-65baf127e155`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 736–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nondegenerate.toMatrix₂' (h : B.Nondegenerate) : (toMatrix₂' R B).Nondegenerate :=
  nondegenerate_toMatrix₂'_iff.mpr h

end StandardBasis

section GeneralBasis

/-!
Lemmas transferring nondegeneracy (or left/right separating) between a matrix and its associated
bilinear form (for an arbitrary basis of a free module)
-/

variable [AddCommMonoid M₁] [Module R M₁] [AddCommMonoid M₂] [Module R M₂]
  (b₁ : Basis m R M₁) (b₂ : Basis n R M₂) {B : M₁ →ₗ[R] M₂ →ₗ[R] R}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SesquilinearForm/Variant1146797e26d0e4ae21d16f955fda0e1f0ac99fecb09368f1b12faa093536a1d2.lean#L736).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42bae6dc806fc117d684dd10ca0235f0250a36f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
