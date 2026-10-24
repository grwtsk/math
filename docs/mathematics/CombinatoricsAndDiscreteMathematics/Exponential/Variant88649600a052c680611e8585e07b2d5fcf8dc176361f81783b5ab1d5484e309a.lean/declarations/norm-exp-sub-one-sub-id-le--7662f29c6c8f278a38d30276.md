# norm_exp_sub_one_sub_id_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8696c50b-0ba9-7cc5-a4f0-38ef9c23b0e5",
  "kind": "theorem",
  "lexical_name": "norm_exp_sub_one_sub_id_le",
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
  "slug": "norm-exp-sub-one-sub-id-le--7662f29c6c8f278a38d30276",
  "source": {
    "blob": "bd6a2d80c81e25a49593d60aae8f460f329d62fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 456,
    "line": 448,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7662f29c6c8f278a38d302766421c17d3f30a0953bcf912de844df2e5a882a1b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8696c50b-0ba9-7cc5-a4f0-38ef9c23b0e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_exp_sub_one_sub_id_le {x : ℂ} (hx : ‖x‖ ≤ 1) : ‖exp x - 1 - x‖ ≤ ‖x‖ ^ 2 :=
  calc
    ‖exp x - 1 - x‖ = ‖exp x - ∑ m ∈ range 2, x ^ m / m.factorial‖ := by
      simp [sub_eq_add_neg, sum_range_succ_comm, add_assoc, Nat.factorial]
    _ ≤ ‖x‖ ^ 2 * ((Nat.succ 2 : ℝ) * (Nat.factorial 2 * (2 : ℕ) : ℝ)⁻¹) :=
      (exp_bound hx (by decide))
    _ ≤ ‖x‖ ^ 2 * 1 := by gcongr; norm_num [Nat.factorial]
    _ = ‖x‖ ^ 2 := by rw [mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Exponential/Variant88649600a052c680611e8585e07b2d5fcf8dc176361f81783b5ab1d5484e309a.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd6a2d80c81e25a49593d60aae8f460f329d62fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
