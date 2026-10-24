# PrimitiveAdditiveTriple.freyIntegralModel_Δ_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f2a4967-ac9d-cad3-7faa-cc1cc1a173e5",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyIntegralModel_Δ_ne_zero",
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
  "slug": "primitiveadditivetriple-freyintegralmodel-ne-zero--585ada058ad3a04d6b5391cc",
  "source": {
    "blob": "83dee7c0fab72ca75b64d094a8a9df22eb0ecc01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 49,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:585ada058ad3a04d6b5391cc3fa71f885ac68818e19a1fc0d0ca01ebded0f388",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f2a4967-ac9d-cad3-7faa-cc1cc1a173e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyIntegralModel_Δ_ne_zero
    (t : PrimitiveAdditiveTriple) : t.freyIntegralModel.Δ ≠ 0 := by
  rw [t.freyIntegralModel_Δ]
  have ha : (0 : ℤ) < (t.a : ℤ) := by
    exact_mod_cast t.a_pos
  have hb : (0 : ℤ) < (t.b : ℤ) := by
    exact_mod_cast t.b_pos
  have hc : (0 : ℤ) < (t.c : ℤ) := by
    exact_mod_cast t.c_pos
  have hΔ :
      (0 : ℤ) < 16 * (t.a : ℤ) ^ 2 * (t.b : ℤ) ^ 2 * (t.c : ℤ) ^ 2 := by
    positivity
  exact ne_of_gt hΔ

/-- Base-changing the displayed integral model to `ℚ` gives the exact rational
Frey model already used by the marked-point and affine-evaluation layers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83dee7c0fab72ca75b64d094a8a9df22eb0ecc01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
