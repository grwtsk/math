# regOfFamily_eq_det'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51040a42-1cf5-5f6e-c022-5ec4bb4d21d4",
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
  "slug": "regoffamily-eq-det--c0a95231af624c3889937b94",
  "source": {
    "blob": "a9bb0bf75c7ebac0a28dcafeb131e939b7c87bd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 118,
    "path": "GRWTSK/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0a95231af624c3889937b9426813b57d0274aec8031032ff0a91dadccff7f59",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51040a42-1cf5-5f6e-c022-5ec4bb4d21d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regOfFamily_eq_det' (u : Fin (rank K) → (𝓞 K)ˣ) :
    regOfFamily u =
      |(of fun i ↦ logEmbedding K (Additive.ofMul (u ((equivFinRank K).symm i)))).det| := by
  by_cases hu : IsMaxRank u
  · rw [regOfFamily_of_isMaxRank hu, ZLattice.covolume_eq_det _
      (((basisOfIsMaxRank hu).restrictScalars ℤ).reindex (equivFinRank K)), Basis.coe_reindex]
    congr with i
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

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variantcfe07a715a0c850729adae8145f97cf67861f72b41a3882520c582e9d132bdd3.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9bb0bf75c7ebac0a28dcafeb131e939b7c87bd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
