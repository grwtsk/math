# getElem?_eraseIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e3a61c-d282-4411-e8a2-5c0ea829e544",
  "kind": "theorem",
  "lexical_name": "getElem?_eraseIdx",
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
  "slug": "getelem-eraseidx--756eaf6ffc901eac2ba3b689",
  "source": {
    "blob": "74a1affabb8204ca14a1114bad74189f0bfc8085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 31,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:756eaf6ffc901eac2ba3b6894ebf0b1f5c3a791296bd5d5abd582ea714b3eeb8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e3a61c-d282-4411-e8a2-5c0ea829e544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getElem?_eraseIdx {l : List α} {i : Nat} {j : Nat} :
    (l.eraseIdx i)[j]? = if j < i then l[j]? else l[j + 1]? := by
  rw [eraseIdx_eq_take_drop_succ, getElem?_append]
  split <;> rename_i h
  · rw [getElem?_take]
    split
    · rfl
    · simp_all
      omega
  · rw [getElem?_drop]
    split <;> rename_i h'
    · simp only [length_take, Nat.min_def, Nat.not_lt] at h
      split at h
      · omega
      · simp_all
        omega
    · simp only [length_take]
      simp only [length_take, Nat.min_def, Nat.not_lt] at h
      split at h
      · congr 1
        omega
      · rw [getElem?_eq_none, getElem?_eq_none] <;> omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant558da3add7057e8b010b19759da10d5992efe5ab7e0c2a9b6cb528de6523e4a5.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a1affabb8204ca14a1114bad74189f0bfc8085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
