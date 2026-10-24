# lt_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5afcb4f-9531-8eb3-d95f-5e5a3612bcfa",
  "kind": "theorem",
  "lexical_name": "lt_three",
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
  "slug": "lt-three--d7c3cbca90d785b73fb1310a",
  "source": {
    "blob": "acd215e4b519d6b8413020621e98d351e8dc91c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7c3cbca90d785b73fb1310a09d66dacfcc1fc7f899aa1c1e2b08aaeb6734f7c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5afcb4f-9531-8eb3-d95f-5e5a3612bcfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_three {p q r : ℕ+} (hpq : p ≤ q) (hqr : q ≤ r) (H : 1 < sumInv {p, q, r}) : p < 3 := by
  have h3 : (0 : ℚ) < 3 := by norm_num
  contrapose! H
  rw [sumInv_pqr]
  have h3q := H.trans hpq
  have h3r := h3q.trans hqr
  have hp : (p : ℚ)⁻¹ ≤ 3⁻¹ := by
    rw [inv_le_inv₀ _ h3]
    · assumption_mod_cast
    · norm_num
  have hq : (q : ℚ)⁻¹ ≤ 3⁻¹ := by
    rw [inv_le_inv₀ _ h3]
    · assumption_mod_cast
    · norm_num
  have hr : (r : ℚ)⁻¹ ≤ 3⁻¹ := by
    rw [inv_le_inv₀ _ h3]
    · assumption_mod_cast
    · norm_num
  calc
    (p : ℚ)⁻¹ + (q : ℚ)⁻¹ + (r : ℚ)⁻¹ ≤ 3⁻¹ + 3⁻¹ + 3⁻¹ := add_le_add (add_le_add hp hq) hr
    _ = 1 := by norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ADEInequality/Variant3c9bfabfa284e2552a5a8b14f8927328642b5af195efa97b52c3ff7128f2fdf5.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acd215e4b519d6b8413020621e98d351e8dc91c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
