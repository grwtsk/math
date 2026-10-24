# getElem?_rotate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9555a4aa58439b8b980beb47c4f03e6dd3df969c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/451f73123e20d8cb32675ece4a297498ff6bc149c92c7d423b66200d8581a987.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2871d255-cf15-4a2d-53d4-0909e1555cc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbfd8120-1e25-da8e-9fe9-fa22b071d3bf",
  "kind": "theorem",
  "lexical_name": "getElem?_rotate",
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
  "slug": "getelem-rotate--3a84d3443c9c18db4a4fe4fa",
  "source": {
    "blob": "9555a4aa58439b8b980beb47c4f03e6dd3df969c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 198,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant451f73123e20d8cb32675ece4a297498ff6bc149c92c7d423b66200d8581a987.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a84d3443c9c18db4a4fe4fa6adef30bcac2707b936589b38de68f4194447cea",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant451f73123e20d8cb32675ece4a297498ff6bc149c92c7d423b66200d8581a987.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbfd8120-1e25-da8e-9fe9-fa22b071d3bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem?_rotate {l : List α} {n m : ℕ} (hml : m < l.length) :
    (l.rotate n)[m]? = l[(m + n) % l.length]? := by
  rw [rotate_eq_drop_append_take_mod]
  rcases lt_or_ge m (l.drop (n % l.length)).length with hm | hm
  · rw [getElem?_append_left hm, getElem?_drop, ← add_mod_mod]
    rw [length_drop, Nat.lt_sub_iff_add_lt] at hm
    rw [mod_eq_of_lt hm, Nat.add_comm]
  · have hlt : n % length l < length l := mod_lt _ (m.zero_le.trans_lt hml)
    rw [getElem?_append_right hm, getElem?_take_of_lt, length_drop]
    · congr 1
      rw [length_drop] at hm
      have hm' := Nat.sub_le_iff_le_add'.1 hm
      have : n % length l + m - length l < length l := by
        rw [Nat.sub_lt_iff_lt_add hm']
        exact Nat.add_lt_add hlt hml
      conv_rhs => rw [Nat.add_comm m, ← mod_add_mod, mod_eq_sub_mod hm', mod_eq_of_lt this]
      lia
    · rwa [Nat.sub_lt_iff_lt_add' hm, length_drop, Nat.sub_add_cancel hlt.le]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant451f73123e20d8cb32675ece4a297498ff6bc149c92c7d423b66200d8581a987.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rotate/Variant451f73123e20d8cb32675ece4a297498ff6bc149c92c7d423b66200d8581a987.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9555a4aa58439b8b980beb47c4f03e6dd3df969c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
