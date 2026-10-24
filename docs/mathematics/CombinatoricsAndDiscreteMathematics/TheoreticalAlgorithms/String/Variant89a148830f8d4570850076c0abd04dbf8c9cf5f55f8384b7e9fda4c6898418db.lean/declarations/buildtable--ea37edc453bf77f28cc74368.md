# buildTable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6695b4692e8ca460e9851455c63be67d2fe7f00726ee546b171e345da6d79d97",
  "kind": "def",
  "lexical_name": "buildTable",
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
  "slug": "buildtable--ea37edc453bf77f28cc74368",
  "source": {
    "blob": "b3210bc02d20d31d80f7c04af8dca1a398f61ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea37edc453bf77f28cc743683464d839de50e68b68bfea05a321edcbdb7bc18a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6695b4692e8ca460e9851455c63be67d2fe7f00726ee546b171e345da6d79d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def buildTable (pat : Slice) : Vector Nat pat.utf8ByteSize :=
  if h : pat.utf8ByteSize = 0 then
    #v[].cast h.symm
  else
    let arr := Array.emptyWithCapacity pat.utf8ByteSize
    let arr' := arr.push 0
    go arr' (by simp [arr']) (by simp [arr', arr]; omega) (by simp [arr', arr])
where
  go (table : Array Nat) (ht₀ : 0 < table.size) (ht : table.size ≤ pat.utf8ByteSize) (h : ∀ (i : Nat) hi, table[i]'hi ≤ i) :
      Vector Nat pat.utf8ByteSize :=
    if hs : table.size < pat.utf8ByteSize then
      let patByte := pat.getUTF8Byte ⟨table.size⟩ hs
      let dist := computeDistance patByte table ht h (table[table.size - 1])
        (by have := h (table.size - 1) (by omega); omega)
      go (table.push dist) (by simp) (by simp; omega) (by
        intro i hi
        by_cases hi' : i = table.size
        · subst hi'
          simpa using dist.2
        · rw [Array.getElem_push_lt]
          · apply h
          · simp at hi
            omega)
    else
      Vector.mk table (by omega)

  computeDistance (patByte : UInt8) (table : Array Nat)
      (ht : table.size ≤ pat.utf8ByteSize)
      (h : ∀ (i : Nat) hi, table[i]'hi ≤ i) (guess : Nat) (hg : guess < table.size) :
      { n : Nat // n ≤ table.size } :=
    if pat.getUTF8Byte ⟨guess⟩ (by simp [Pos.Raw.lt_iff]; omega) = patByte then
      ⟨guess + 1, by omega⟩
    else if h₀ : guess = 0 then
      ⟨0, by simp⟩
    else
      have : table[guess - 1] < guess := by have := h (guess - 1) (by omega); omega
      computeDistance patByte table ht h table[guess - 1] (by omega)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant89a148830f8d4570850076c0abd04dbf8c9cf5f55f8384b7e9fda4c6898418db.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3210bc02d20d31d80f7c04af8dca1a398f61ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
