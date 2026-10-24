# regOfFamily_eq_det'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad681e27c1d3f32611e63ec7e8a96012e3cb096e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e1b2d4c-ba59-c841-7bfa-1eb186e305f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:090f55f9-6f17-15d9-6f07-d322c0c18799",
  "kind": "theorem",
  "lexical_name": "regOfFamily_eq_det'",
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
  "slug": "regoffamily-eq-det--c5acf276777950fa8b2c0270",
  "source": {
    "blob": "ad681e27c1d3f32611e63ec7e8a96012e3cb096e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 170,
    "path": "GRWTSK/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5acf276777950fa8b2c027083564b4705b499d5cd2ed4167a20f619e53da1f2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:090f55f9-6f17-15d9-6f07-d322c0c18799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regOfFamily_eq_det' (u : Fin (rank K) → (𝓞 K)ˣ) :
    regOfFamily u =
      |(of fun i ↦ logEmbedding K (Additive.ofMul (u ((equivFinRank K).symm i)))).det| := by
  by_cases hu : IsMaxRank u
  · rw [regOfFamily_of_isMaxRank hu, ZLattice.covolume_eq_det _
      (((basisOfIsMaxRank hu).restrictScalars ℤ).reindex (equivFinRank K)), Basis.coe_reindex]
    congr 3 with i
    simp [basisOfIsMaxRank_apply hu]
  · rw [regOfFamily_eq_zero hu, det_eq_zero_of_not_linearIndependent_rows, abs_zero]
    rwa [IsMaxRank, ← linearIndependent_equiv (equivFinRank K).symm] at hu

open scoped Classical in
/--
Let `u : Fin (rank K) → (𝓞 K)ˣ` be a family of units and let `w₁` and `w₂` be two infinite
places. Then, the two square matrices with entries `(mult w * log w (u i))_i` where `w ≠ w_j` for
`j = 1, 2` have the same determinant in absolute value.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad681e27c1d3f32611e63ec7e8a96012e3cb096e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
