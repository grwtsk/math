# of_part_num_eq_one_and_exists_int_part_denom_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2751c427-02c5-3a53-815c-b441902e38ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd9d26b5-fb31-cafc-5a90-613d549d4056",
  "kind": "theorem",
  "lexical_name": "of_part_num_eq_one_and_exists_int_part_denom_eq",
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
  "slug": "of-part-num-eq-one-and-exists-int-part-denom-eq--36e9e2acf4931fbf3281b942",
  "source": {
    "blob": "c57784793a3c2f2fef2db7353a5f21672cd2408e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36e9e2acf4931fbf3281b942edac759f35b70932ce7dc2c0637e48be7228e358",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd9d26b5-fb31-cafc-5a90-613d549d4056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_part_num_eq_one_and_exists_int_part_denom_eq {gp : GeneralizedContinuedFraction.Pair K}
    (nth_s_eq : (of v).s.get? n = some gp) : gp.a = 1 ∧ ∃ z : ℤ, gp.b = (z : K) := by
  obtain ⟨ifp, stream_succ_nth_eq, -⟩ : ∃ ifp, IntFractPair.stream v (n + 1) = some ifp ∧ _
  exact IntFractPair.exists_succ_get?_stream_of_gcf_of_get?_eq_some nth_s_eq
  have : gp = ⟨1, ifp.b⟩ := by
    have : (of v).s.get? n = some ⟨1, ifp.b⟩ :=
      get?_of_eq_some_of_succ_get?_intFractPair_stream stream_succ_nth_eq
    have : some gp = some ⟨1, ifp.b⟩ := by rwa [nth_s_eq] at this
    injection this
  simp [this]
#align generalized_continued_fraction.of_part_num_eq_one_and_exists_int_part_denom_eq GeneralizedContinuedFraction.of_part_num_eq_one_and_exists_int_part_denom_eq

/-- Shows that the partial numerators `aᵢ` are equal to one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Approximations/Variantbd3ac0ed13dd8446977fdaf4d02568dc289401e3c2a7e6f105654178e8cc6d17.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57784793a3c2f2fef2db7353a5f21672cd2408e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
