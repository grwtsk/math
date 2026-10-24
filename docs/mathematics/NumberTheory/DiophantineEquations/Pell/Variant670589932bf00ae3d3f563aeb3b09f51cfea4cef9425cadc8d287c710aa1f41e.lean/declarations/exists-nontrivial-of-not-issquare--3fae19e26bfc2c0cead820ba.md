# exists_nontrivial_of_not_isSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cd9d87a-a858-bd57-c588-4d1abb06e509",
  "kind": "theorem",
  "lexical_name": "exists_nontrivial_of_not_isSquare",
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
  "slug": "exists-nontrivial-of-not-issquare--3fae19e26bfc2c0cead820ba",
  "source": {
    "blob": "9c19465a0f8df240d4c519037da398f00b4ffbce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 410,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fae19e26bfc2c0cead820ba35f5ddc5870bb5acdf4ef900b4df2a76dfb380b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cd9d87a-a858-bd57-c588-4d1abb06e509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nontrivial_of_not_isSquare (h₀ : 0 < d) (hd : ¬IsSquare d) :
    ∃ a : Solution₁ d, a ≠ 1 ∧ a ≠ -1 := by
  obtain ⟨x, y, prop, hy⟩ := exists_of_not_isSquare h₀ hd
  refine ⟨mk x y prop, fun H => ?_, fun H => ?_⟩ <;> apply_fun Solution₁.y at H <;>
    simp [hy] at H

/-- If `d` is a positive integer that is not a square, then there exists a solution
to the Pell equation `x^2 - d*y^2 = 1` with `x > 1` and `y > 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Pell/Variant670589932bf00ae3d3f563aeb3b09f51cfea4cef9425cadc8d287c710aa1f41e.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c19465a0f8df240d4c519037da398f00b4ffbce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
