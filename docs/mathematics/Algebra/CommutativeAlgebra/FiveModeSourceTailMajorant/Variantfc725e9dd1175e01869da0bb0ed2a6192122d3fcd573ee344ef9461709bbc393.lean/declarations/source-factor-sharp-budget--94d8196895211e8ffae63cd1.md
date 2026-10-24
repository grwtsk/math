# source_factor_sharp_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d13534b-bb7d-6fd1-c433-96cf0cfb1fa6",
  "kind": "theorem",
  "lexical_name": "source_factor_sharp_budget",
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
  "slug": "source-factor-sharp-budget--94d8196895211e8ffae63cd1",
  "source": {
    "blob": "e6b80c436df8d48baa55c04397943562b4b5a028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94d8196895211e8ffae63cd109dbe2dbb132ee404457d9e73645021122f53c18",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d13534b-bb7d-6fd1-c433-96cf0cfb1fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem source_factor_sharp_budget (z : ℂ) (T : ℝ) (hT : 0 < T)
    (hz : T ≤ ‖z‖) :
    ‖z^2 - 1/4‖ ≤ ‖z‖^2 * (1 + 1/(4*T^2)) := by
  have hp : T^2 ≤ ‖z‖^2 := pow_le_pow_left₀ hT.le hz 2
  have hq : (1/4 : ℝ) ≤ ‖z‖^2 / (4*T^2) := by
    apply (le_div_iff₀ (by positivity : 0 < 4*T^2)).2
    nlinarith
  calc
    _ ≤ ‖z^2‖ + ‖(1/4 : ℂ)‖ := norm_sub_le _ _
    _ = ‖z‖^2 + (1/4 : ℝ) := by norm_num [norm_pow]
    _ ≤ ‖z‖^2 + ‖z‖^2 / (4*T^2) := add_le_add_right hq _
    _ = _ := by ring

/-- Sharp bilateral norm bound before normalization or replacement of |z| by |gamma|. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/FiveModeSourceTailMajorant/Variantfc725e9dd1175e01869da0bb0ed2a6192122d3fcd573ee344ef9461709bbc393.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b80c436df8d48baa55c04397943562b4b5a028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
