# minKey?_alterKey_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 8693,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:91eecbd1-3740-76f7-1f9e-caeb8279abfe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:feda54d2-7f10-d9ce-6bb7-4bee91f1c3c3",
  "kind": "theorem",
  "lexical_name": "minKey?_alterKey_eq_self",
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
  "slug": "minkey-alterkey-eq-self--b9386040297ba99f628abcaa",
  "source": {
    "blob": "dbbf8b921dbaa720483377d3c4810f060d70f676",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 8714,
    "line": 8693,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9386040297ba99f628abcaaa11fe1550da5785e51d25320b36c0011af39a10a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:feda54d2-7f10-d9ce-6bb7-4bee91f1c3c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8693–8714.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minKey?_alterKey_eq_self [Ord α] [TransOrd α] [BEq α] [LawfulBEqOrd α] [LawfulEqOrd α]
    {k f} {l : List ((a : α) × β a)} (hd : DistinctKeys l) :
    minKey? (alterKey k f l) = some k ↔
      (f (getValueCast? k l)).isSome ∧ ∀ k', containsKey k' l → (compare k k').isLE := by
  simp only [minKey?_eq_some_iff_getKey?_eq_self_and_forall hd.alterKey, getKey?_alterKey _ hd,
    beq_self_eq_true, ↓reduceIte, ite_eq_left_iff, Bool.not_eq_true, Option.isSome_eq_false_iff,
    Option.isNone_iff_eq_none, reduceCtorEq, imp_false, ← Option.isSome_iff_ne_none,
    containsKey_alterKey hd, Bool.ite_eq_true_distrib, and_congr_right_iff]
  intro hf
  apply Iff.intro
  · intro hk k' hk'
    simpa [hk', hf] using hk k'
  · intro hk k' hk'
    simp only [hf, if_true_left] at hk'
    by_cases hbeq : k == k'
    · simp [compare_eq_iff_beq.mpr hbeq]
    · exact hk k' (hk' hbeq)

namespace Const

variable {β : Type v}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Associative/Variant755468eaf154487453d6637abc7b87d5fe27377741a216c63894b6ed3f2c733c.lean#L8693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbbf8b921dbaa720483377d3c4810f060d70f676` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
