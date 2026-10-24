# eraseIdx_insertIdx'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4403b53-77b1-8ad0-1f40-ec93aa029995",
  "kind": "theorem",
  "lexical_name": "eraseIdx_insertIdx'",
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
  "slug": "eraseidx-insertidx--0906dff3169f397257d76c16",
  "source": {
    "blob": "5e4555306ef6ac8da8a549b2bee061f46df6e20c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 550,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0906dff3169f397257d76c167f435d951a5bf116581ee07d23552e97cfb56d76",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4403b53-77b1-8ad0-1f40-ec93aa029995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eraseIdx_insertIdx' {v : Vector α (n + 1)} :
    ∀ {i : Fin (n + 1)} {j : Fin (n + 2)},
      eraseIdx (j.succAbove i) (insertIdx a j v) = insertIdx a (i.predAbove j) (eraseIdx i v)
  | ⟨i, hi⟩, ⟨j, hj⟩ => by
    dsimp [insertIdx, eraseIdx, Fin.succAbove, Fin.predAbove]
    rw [Subtype.mk_eq_mk]
    simp only [Fin.lt_iff_val_lt_val]
    split_ifs with hij
    · rcases Nat.exists_eq_succ_of_ne_zero
        (Nat.pos_iff_ne_zero.1 (lt_of_le_of_lt (Nat.zero_le _) hij)) with ⟨j, rfl⟩
      rw [← List.insertIdx_eraseIdx_of_ge]
      · simp; rfl
      · simpa
      · simpa [Nat.lt_succ_iff] using hij
    · dsimp
      rw [← List.insertIdx_eraseIdx_of_le]
      · rfl
      · simpa
      · simpa [not_lt] using hij

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant09ad68572ced5c47659b7d499c2adca759349b0c679d864f8ea54f4dbac9f84d.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e4555306ef6ac8da8a549b2bee061f46df6e20c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
