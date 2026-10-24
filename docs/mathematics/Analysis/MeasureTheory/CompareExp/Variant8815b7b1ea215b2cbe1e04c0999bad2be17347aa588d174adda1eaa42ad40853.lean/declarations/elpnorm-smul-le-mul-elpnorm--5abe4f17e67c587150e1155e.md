# eLpNorm'_smul_le_mul_eLpNorm'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b6ad964-30c7-42b1-d99a-b2c7e20d2ea3",
  "kind": "theorem",
  "lexical_name": "eLpNorm'_smul_le_mul_eLpNorm'",
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
  "slug": "elpnorm-smul-le-mul-elpnorm--5abe4f17e67c587150e1155e",
  "source": {
    "blob": "0e5583391e8a71d8008933342f40cfa89d134704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 518,
    "line": 511,
    "path": "GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5abe4f17e67c587150e1155e034e228ef9674135f7a30e44c0ba5370fa9bed7c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b6ad964-30c7-42b1-d99a-b2c7e20d2ea3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 511–518.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm'_smul_le_mul_eLpNorm' {p q r : ℝ} (hf : AEStronglyMeasurable f μ)
    {φ : α → 𝕜} (hφ : AEStronglyMeasurable φ μ) (hp0_lt : 0 < p) (hpq : p < q)
    (hpqr : 1 / p = 1 / q + 1 / r) : eLpNorm' (φ • f) p μ ≤ eLpNorm' φ q μ * eLpNorm' f r μ := by
  simpa using! eLpNorm'_le_eLpNorm'_mul_eLpNorm' hφ hf (· • ·) 1
    (.of_forall fun _ => by simpa using! nnnorm_smul_le _ _)
    hp0_lt hpq hpqr

/-- Hölder's inequality, as an inequality on the `ℒp` seminorm of a scalar product `φ • f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CompareExp/Variant8815b7b1ea215b2cbe1e04c0999bad2be17347aa588d174adda1eaa42ad40853.lean#L511).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5583391e8a71d8008933342f40cfa89d134704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
