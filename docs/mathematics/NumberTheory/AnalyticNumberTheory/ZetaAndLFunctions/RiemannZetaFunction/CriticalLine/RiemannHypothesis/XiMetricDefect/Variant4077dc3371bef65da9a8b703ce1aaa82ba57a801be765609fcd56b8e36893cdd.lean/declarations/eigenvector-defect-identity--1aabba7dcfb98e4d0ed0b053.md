# eigenvector_defect_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a51f5cae-bdab-4f18-3469-78d6b57bd160",
  "kind": "theorem",
  "lexical_name": "eigenvector_defect_identity",
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
  "slug": "eigenvector-defect-identity--1aabba7dcfb98e4d0ed0b053",
  "source": {
    "blob": "a939af2707cdd879f4660e08ba5ff26d83fc970c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aabba7dcfb98e4d0ed0b05343977f8a760fe1b3f37c9ffcadaa49fc5f2575ba",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a51f5cae-bdab-4f18-3469-78d6b57bd160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvector_defect_identity {ι : Type*} [Fintype ι]
    (L G : Matrix ι ι ℂ) (v : ι → ℂ) (z : ℂ) (hLv : L *ᵥ v = z • v) :
    star v ⬝ᵥ ((G * L - Lᴴ * G) *ᵥ v) =
      ((2 * z.im : ℝ) : ℂ) * Complex.I * (star v ⬝ᵥ (G *ᵥ v)) := by
  have hb : star v ⬝ᵥ (Lᴴ *ᵥ (G *ᵥ v)) =
      star z * (star v ⬝ᵥ (G *ᵥ v)) := by
    rw [dotProduct_mulVec, vecMul_conjTranspose, star_star, hLv,
      star_smul, smul_dotProduct, smul_eq_mul]
  rw [sub_mulVec, ← mulVec_mulVec, ← mulVec_mulVec, dotProduct_sub,
    hLv, mulVec_smul, dotProduct_smul, hb, smul_eq_mul, ← sub_mul]
  rw [show star z = conj z from rfl, Complex.sub_conj]

/-- A proved positive metric and relative quadratic bound control eigenvalue displacement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a939af2707cdd879f4660e08ba5ff26d83fc970c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
