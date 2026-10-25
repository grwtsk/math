# find_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d70484a9944b00da82c4f52f53f9ee4d57935100",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1067,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9c40c52-fef1-5595-e2c3-18b8b933e30d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1933e287-58a8-6a19-a5b6-25b13175f77f",
  "kind": "theorem",
  "lexical_name": "find_min",
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
  "slug": "find-min--31bcc7f59ceed83f7c29069d",
  "source": {
    "blob": "d70484a9944b00da82c4f52f53f9ee4d57935100",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1084,
    "line": 1067,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31bcc7f59ceed83f7c29069d40d2f76764c91af473d1653c5fca1076019645dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1933e287-58a8-6a19-a5b6-25b13175f77f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1084.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem find_min :
    ∀ {n : ℕ} {p : Fin n → Prop} [DecidablePred p] {i : Fin n} (_ : i ∈ Fin.find p) {j : Fin n}
      (_ : j < i), ¬p j
  | 0, _, _, _, hi, _, _, _ => Option.noConfusion hi
  | n + 1, p, _, i, hi, ⟨j, hjn⟩, hj, hpj => by
    rw [find] at hi
    rcases h : find fun i : Fin n ↦ p (i.castLT (Nat.lt_succ_of_lt i.2)) with - | k
    · simp only [h] at hi
      split_ifs at hi with hl
      · cases hi
        rw [find_eq_none_iff] at h
        exact h ⟨j, hj⟩ hpj
      · exact Option.not_mem_none _ hi
    · rw [h] at hi
      dsimp at hi
      obtain rfl := Option.some_inj.1 hi
      exact find_min h (show (⟨j, lt_trans hj k.2⟩ : Fin n) < k from hj) hpj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant373f35ae3741411d6f921e6790bb9b1a4363ec3cd26f439b8c84e967febc7fbf.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d70484a9944b00da82c4f52f53f9ee4d57935100` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
