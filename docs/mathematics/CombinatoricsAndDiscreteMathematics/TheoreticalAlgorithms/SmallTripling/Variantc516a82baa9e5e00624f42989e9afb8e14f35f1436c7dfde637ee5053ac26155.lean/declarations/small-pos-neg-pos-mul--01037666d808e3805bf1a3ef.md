# small_pos_neg_pos_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ca3fe16-d960-2e13-0cb7-d071acc91ff0",
  "kind": "lemma",
  "lexical_name": "small_pos_neg_pos_mul",
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
  "slug": "small-pos-neg-pos-mul--01037666d808e3805bf1a3ef",
  "source": {
    "blob": "f9876d8627462a768583d15ef1cf403e611fe873",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01037666d808e3805bf1a3ef13fda463439ef0da9a8f34f3cbe71a10b1a55af9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ca3fe16-d960-2e13-0cb7-d071acc91ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma small_pos_neg_pos_mul (hA : #(A ^ 3) ≤ K * #A) : #(A * A⁻¹ * A) ≤ K ^ 3 * #A := by
  obtain rfl | hA₀ := A.eq_empty_or_nonempty
  · simp
  have : 0 ≤ K := nonneg_of_mul_nonneg_left (hA.trans' <| by positivity) (by positivity)
  refine le_of_mul_le_mul_left ?_ (by positivity : (0 : ℝ) < #A)
  calc
    (#A * #(A * A⁻¹ * A) : ℝ) ≤ #(A * (A * A⁻¹)) * #(A * A) := by
      norm_cast; simpa using ruzsa_triangle_inequality_invMul_mul_mul (A * A⁻¹) A A
    _ = #(A  * A * A⁻¹) * #(A ^ 2) := by simp [pow_succ, mul_assoc]
    _ ≤ (K ^ 2 * #A) * (K * #A) := by
      gcongr
      · exact small_pos_pos_neg_mul hA
      calc
        (#(A ^ 2) : ℝ) ≤ #(A ^ 3) := mod_cast hA₀.card_pow_mono (by norm_num)
        _ ≤ K * #A := hA
    _ = #A * (K ^ 3 * #A) := by ring

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SmallTripling/Variantc516a82baa9e5e00624f42989e9afb8e14f35f1436c7dfde637ee5053ac26155.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9876d8627462a768583d15ef1cf403e611fe873` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
