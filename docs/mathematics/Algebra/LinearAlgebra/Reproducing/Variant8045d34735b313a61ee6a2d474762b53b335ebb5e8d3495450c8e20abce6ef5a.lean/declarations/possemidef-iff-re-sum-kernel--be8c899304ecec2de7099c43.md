# posSemidef_iff_re_sum_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:933fcb2d-6590-6f43-8a1b-a7a3aae20f89",
  "kind": "theorem",
  "lexical_name": "posSemidef_iff_re_sum_kernel",
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
  "slug": "possemidef-iff-re-sum-kernel--be8c899304ecec2de7099c43",
  "source": {
    "blob": "8813c268d018faaad6fd110801a41dd59228481a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 268,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be8c899304ecec2de7099c43990671334a2b7b365f248c36d0a1780c7724274b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:933fcb2d-6590-6f43-8a1b-a7a3aae20f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posSemidef_iff_re_sum_kernel :
    K.PosSemidef ↔ K.IsHermitian ∧ ∀ (f : X × V →₀ 𝕜),
      0 ≤ RCLike.re
        (f.sum fun xv z ↦ f.sum fun xv' w ↦ conj z * w * ⟪K xv'.1 xv.1 xv.2, xv'.2⟫_𝕜) :=
  posSemidef_tfae.out 1 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant8045d34735b313a61ee6a2d474762b53b335ebb5e8d3495450c8e20abce6ef5a.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8813c268d018faaad6fd110801a41dd59228481a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
