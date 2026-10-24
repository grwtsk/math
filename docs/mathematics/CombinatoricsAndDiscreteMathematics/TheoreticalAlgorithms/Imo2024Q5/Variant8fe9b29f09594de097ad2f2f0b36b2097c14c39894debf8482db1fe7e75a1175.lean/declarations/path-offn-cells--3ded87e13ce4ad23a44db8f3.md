# Path.ofFn_cells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a64bdcb-3a67-e3e8-c3e8-211acc808969",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe7d3c17-f8e9-4e31-aee0-28c084baccdd",
  "kind": "lemma",
  "lexical_name": "Path.ofFn_cells",
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
  "slug": "path-offn-cells--3ded87e13ce4ad23a44db8f3",
  "source": {
    "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 428,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ded87e13ce4ad23a44db8f3a2ec22faf207d627cdd2838c953b5ec0b74e8362",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe7d3c17-f8e9-4e31-aee0-28c084baccdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Path.ofFn_cells {m : ℕ} (f : Fin m → Cell N) (hm : m ≠ 0)
    (hf : (f ⟨0, Nat.pos_of_ne_zero hm⟩).1 = 0)
    (hl : (f ⟨m - 1, Nat.sub_one_lt hm⟩).1 = ⟨N + 1, by lia⟩)
    (ha : ∀ (i : ℕ) (hi : i + 1 < m), Adjacent (f ⟨i, Nat.lt_of_succ_lt hi⟩) (f ⟨i + 1, hi⟩)) :
    (Path.ofFn f hm hf hl ha).cells = List.ofFn f :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9034f450ecae0936b1f28e8c38199e491c1a891a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
