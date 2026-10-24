# le_egauge_smul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7515445-94d0-02b2-22e3-065a41fc4fc9",
  "kind": "lemma",
  "lexical_name": "le_egauge_smul_right",
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
  "slug": "le-egauge-smul-right--6a21e394b4749097be4e9c26",
  "source": {
    "blob": "177952f4fcc3a90b1074413d7f3d324a64e92b40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a21e394b4749097be4e9c2637d74f4f84ca69a0166b13ee78d5338fd51be0ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7515445-94d0-02b2-22e3-065a41fc4fc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_egauge_smul_right (c : 𝕜) (s : Set E) (x : E) :
    ‖c‖ₑ * egauge 𝕜 s x ≤ egauge 𝕜 s (c • x) := by
  rw [le_egauge_iff]
  rintro a ⟨y, hy, hxy⟩
  rcases eq_or_ne c 0 with rfl | hc
  · simp
  · refine ENNReal.mul_le_of_le_div' <| le_trans ?_ ENNReal.coe_div_le
    rw [div_eq_inv_mul, ← nnnorm_inv, ← nnnorm_mul]
    refine egauge_le_of_mem_smul ⟨y, hy, ?_⟩
    simp only [mul_smul, hxy, inv_smul_smul₀ hc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EGauge/Variant0c8b3167a0fc705edc1fd2a6af3114c2e8e2f88db56169527a5a6e802e82e186.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177952f4fcc3a90b1074413d7f3d324a64e92b40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
