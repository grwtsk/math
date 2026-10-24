# range_circleMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4630ca192db1188ba6036a7bf8b4670540e0e8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e0a4d9a-e547-2f8b-9765-fa5d15e91676",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f28c68b8-3711-5883-fdaf-ddbfbfd38022",
  "kind": "theorem",
  "lexical_name": "range_circleMap",
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
  "slug": "range-circlemap--9bd917578685371bc04be5fc",
  "source": {
    "blob": "d4630ca192db1188ba6036a7bf8b4670540e0e8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9bd917578685371bc04be5fc0542b1bcb414d0da2dbe65dc5c403c83c98bac57",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f28c68b8-3711-5883-fdaf-ddbfbfd38022`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem range_circleMap (c : ℂ) (R : ℝ) : range (circleMap c R) = sphere c |R| :=
  calc
    range (circleMap c R) = c +ᵥ R • range fun θ : ℝ => exp (θ * I) := by
      simp only [← image_vadd, ← image_smul, ← range_comp, vadd_eq_add, circleMap, (· ∘ ·),
        real_smul]
    _ = sphere c |R| := by
      rw [Complex.range_exp_mul_I, smul_sphere R 0 zero_le_one]
      simp
#align range_circle_map range_circleMap

/-- The image of `(0, 2π]` under `circleMap c R` is the circle with center `c` and radius `|R|`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CircleIntegral/Variante59ec91bd1792c3ba4ab5ced24781b735b0f30899e0da4168df412bed4d376a8.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4630ca192db1188ba6036a7bf8b4670540e0e8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
