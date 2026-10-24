# chineseRemainderOfList_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2cb39a1101ea722e223d526dc4d50533a664968f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8f30833-9972-07f1-4644-3ae42ec31516",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00bfd626-e0a9-6cfa-61b8-40f6278997ee",
  "kind": "theorem",
  "lexical_name": "chineseRemainderOfList_perm",
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
  "slug": "chineseremainderoflist-perm--1526ef54ac4cf57ca8d4c20e",
  "source": {
    "blob": "2cb39a1101ea722e223d526dc4d50533a664968f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 108,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1526ef54ac4cf57ca8d4c20eb9d8f582ed18929f6674aec22b2c8d8400f4635c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00bfd626-e0a9-6cfa-61b8-40f6278997ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chineseRemainderOfList_perm {l l' : List ι} (hl : l.Perm l')
    (hs : ∀ i ∈ l, s i ≠ 0) (co : l.Pairwise (Coprime on s)) :
    (chineseRemainderOfList a s l co : ℕ) =
    chineseRemainderOfList a s l' (co.perm hl coprime_comm.mpr) := by
  let z := chineseRemainderOfList a s l' (co.perm hl coprime_comm.mpr)
  have hlp : (l.map s).prod = (l'.map s).prod := List.Perm.prod_eq (List.Perm.map s hl)
  exact (chineseRemainderOfList_modEq_unique a s l co (z := z)
    (fun i hi => z.prop i (hl.symm.mem_iff.mpr hi))).symm.eq_of_lt_of_lt
      (chineseRemainderOfList_lt_prod _ _ _ _ hs)
      (by rw [hlp]
          exact chineseRemainderOfList_lt_prod _ _ _ _
            (by simpa [List.Perm.mem_iff hl.symm] using hs))

/-- The natural number less than `(m.map s).prod` congruent to
`a i` mod `s i` for all  `i ∈ m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChineseRemainder/Variantd30499344d56820195a0dd915875f70a8444c05566e222352e1fda850ff127cc.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cb39a1101ea722e223d526dc4d50533a664968f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
