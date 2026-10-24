# table_8_ε_le_of_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82bd1c69-53c9-c47d-7240-0bb3d92be81f",
  "kind": "lemma",
  "lexical_name": "table_8_ε_le_of_row",
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
  "slug": "table-8-le-of-row--99fa5da63efcffe21948deb6",
  "source": {
    "blob": "be91be38ec7eba201abf47d37b36b9ccef337036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 632,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantac1412111448c17079ea7ba09a07ed72815a9bc9c095b5052d906b1eda8b4bcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99fa5da63efcffe21948deb678dc2a35976f4820222698942703d304407202e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantac1412111448c17079ea7ba09a07ed72815a9bc9c095b5052d906b1eda8b4bcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82bd1c69-53c9-c47d-7240-0bb3d92be81f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma table_8_ε_le_of_row {b b₀ ε : ℝ} (hmem : (b₀, ε) ∈ table_8) (hb : b₀ ≤ b) :
    table_8_ε b ≤ ε := by
  classical
  let S : Set ℝ := { ε | ∃ p ∈ table_8, p.1 ≤ b ∧ p.2 = ε }
  have hmemS : ε ∈ S := by
    exact ⟨(b₀, ε), hmem, hb, rfl⟩
  have hfinite : S.Finite := by
    refine (Set.Finite.subset (s := { ε | ε ∈ table_8.map Prod.snd }) ?_ ?_)
    · simpa using (List.finite_toSet (table_8.map Prod.snd))
    · intro ε hε
      rcases hε with ⟨p, hp, _, rfl⟩
      have hp' : p.2 ∈ table_8.map Prod.snd := by
        exact (List.mem_map).2 ⟨p, hp, rfl⟩
      simpa using hp'
  have hbdd : BddBelow S := hfinite.bddBelow
  simpa [table_8_ε, S] using (csInf_le hbdd hmemS)

/-- To avoid roundoff errors we add a safety margin here -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantac1412111448c17079ea7ba09a07ed72815a9bc9c095b5052d906b1eda8b4bcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BKLNWAppTables/Variantac1412111448c17079ea7ba09a07ed72815a9bc9c095b5052d906b1eda8b4bcc.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be91be38ec7eba201abf47d37b36b9ccef337036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
