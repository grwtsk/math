# mul_ediv_le_mul_ediv_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfd6a70e-ea9a-4bce-eb01-b8695c7eff58",
  "kind": "theorem",
  "lexical_name": "mul_ediv_le_mul_ediv_assoc",
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
  "slug": "mul-ediv-le-mul-ediv-assoc--a36d9251f68857e2554b79a6",
  "source": {
    "blob": "15a06da89c4c393594ba208842a73db450b91144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a36d9251f68857e2554b79a6cc71390a1594187608f978449287c1a023bfa9f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfd6a70e-ea9a-4bce-eb01-b8695c7eff58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_ediv_le_mul_ediv_assoc {a : Int} (ha : 0 ≤ a) (b : Int) {c : Int} (hc : 0 ≤ c) :
    a * (b / c) ≤ a * b / c := by
  obtain rfl | hlt : c = 0 ∨ 0 < c := by omega
  · simp
  · rw [Int.le_ediv_iff_mul_le hlt, Int.mul_assoc]
    exact Int.mul_le_mul_of_nonneg_left (Int.ediv_mul_le b (Int.ne_of_gt hlt)) ha

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/DivMod/Variantfea0b51481a5b6cb6d3266ca65b3d5b7fd899355a1c2c34c79cf9275e334a23d.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15a06da89c4c393594ba208842a73db450b91144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
