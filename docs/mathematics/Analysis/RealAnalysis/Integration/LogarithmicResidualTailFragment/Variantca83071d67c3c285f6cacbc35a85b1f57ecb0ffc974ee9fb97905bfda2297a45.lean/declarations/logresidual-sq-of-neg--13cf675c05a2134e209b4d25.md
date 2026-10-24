# logResidual_sq_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de48f04f-29c0-f048-65f4-ba48d0238e94",
  "kind": "theorem",
  "lexical_name": "logResidual_sq_of_neg",
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
  "slug": "logresidual-sq-of-neg--13cf675c05a2134e209b4d25",
  "source": {
    "blob": "2175f671b40ee21dbfb24fe11f8d59984847b35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 82,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13cf675c05a2134e209b4d25334a387f390b8b364e6de4f4e59ca0125b4d703f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de48f04f-29c0-f048-65f4-ba48d0238e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logResidual_sq_of_neg (X : ℕ) (ε : ℝ) (hX : 1 ≤ X)
    (u : ℝ) (hu : u < 0) :
    ‖logResidual X ε u‖ ^ 2 = Real.exp u * ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2 := by
  rw [logResidual_eq_of_neg X ε hX u hu, norm_mul, Complex.norm_real,
    Real.norm_eq_abs, abs_of_pos (Real.exp_pos _), mul_pow]
  have he : Real.exp (u / 2) ^ 2 = Real.exp u := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailFragment/Variantca83071d67c3c285f6cacbc35a85b1f57ecb0ffc974ee9fb97905bfda2297a45.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2175f671b40ee21dbfb24fe11f8d59984847b35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
