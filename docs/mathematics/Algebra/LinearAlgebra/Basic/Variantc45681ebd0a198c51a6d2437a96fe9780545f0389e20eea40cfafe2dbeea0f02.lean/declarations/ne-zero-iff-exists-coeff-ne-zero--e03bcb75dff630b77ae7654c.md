# ne_zero_iff_exists_coeff_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:020086f7-7009-25bb-ebed-44c6bc633e24",
  "kind": "theorem",
  "lexical_name": "ne_zero_iff_exists_coeff_ne_zero",
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
  "slug": "ne-zero-iff-exists-coeff-ne-zero--e03bcb75dff630b77ae7654c",
  "source": {
    "blob": "2ad6a0785b418a03f95f7bcc1013b685fd1006cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03bcb75dff630b77ae7654c04feed5f45437a12f2110f0748418e24c5e90c6d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020086f7-7009-25bb-ebed-44c6bc633e24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_zero_iff_exists_coeff_ne_zero (f : MvPowerSeries σ R) :
    f ≠ 0 ↔ (∃ d : σ →₀ ℕ, coeff R d f ≠ 0) := by
  simp only [MvPowerSeries.ext_iff, ne_eq, coeff_zero, not_forall]

variable (m n : σ →₀ ℕ) (φ ψ : MvPowerSeries σ R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc45681ebd0a198c51a6d2437a96fe9780545f0389e20eea40cfafe2dbeea0f02.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ad6a0785b418a03f95f7bcc1013b685fd1006cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
