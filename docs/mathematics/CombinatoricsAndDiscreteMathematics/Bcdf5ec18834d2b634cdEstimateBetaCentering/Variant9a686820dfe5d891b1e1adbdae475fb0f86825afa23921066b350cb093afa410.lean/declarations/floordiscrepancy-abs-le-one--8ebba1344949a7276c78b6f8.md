# floorDiscrepancy_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e313a749-0d5b-c16b-d8ec-8c0364a6a1a6",
  "kind": "theorem",
  "lexical_name": "floorDiscrepancy_abs_le_one",
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
  "slug": "floordiscrepancy-abs-le-one--8ebba1344949a7276c78b6f8",
  "source": {
    "blob": "6a5b6bf1acf71aab6b954df80405b5e5dc661820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ebba1344949a7276c78b6f84648318e3d3697cd22114eb99d86c6248c04adaa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e313a749-0d5b-c16b-d8ec-8c0364a6a1a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem floorDiscrepancy_abs_le_one (L H d : ℕ) (hd : 1 ≤ d) :
    |floorDiscrepancy L H d| ≤ 1 := by
  have hd0 : 0 < (d : ℝ) := by exact_mod_cast (by omega : 0 < d)
  have hH := Nat.floor_le (div_nonneg (Nat.cast_nonneg H) hd0.le)
  have hL := Nat.floor_le (div_nonneg (Nat.cast_nonneg L) hd0.le)
  have hH' := Nat.lt_floor_add_one ((H : ℝ)/(d : ℝ))
  have hL' := Nat.lt_floor_add_one ((L : ℝ)/(d : ℝ))
  rw [Nat.floor_div_eq_div] at hH hL hH' hL'
  unfold floorDiscrepancy
  rw [sub_div, abs_le]
  constructor <;> linarith

/-- A finite discrepancy bound remains only unweighted arithmetic bookkeeping. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variant9a686820dfe5d891b1e1adbdae475fb0f86825afa23921066b350cb093afa410.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a5b6bf1acf71aab6b954df80405b5e5dc661820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
