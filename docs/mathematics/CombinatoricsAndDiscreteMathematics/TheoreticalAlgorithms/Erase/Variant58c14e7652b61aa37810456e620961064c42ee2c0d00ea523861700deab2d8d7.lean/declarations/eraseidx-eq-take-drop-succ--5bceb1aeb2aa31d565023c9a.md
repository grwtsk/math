# eraseIdx_eq_take_drop_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce986398-ae34-db8d-c0f0-495f33506e56",
  "kind": "theorem",
  "lexical_name": "eraseIdx_eq_take_drop_succ",
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
  "slug": "eraseidx-eq-take-drop-succ--5bceb1aeb2aa31d565023c9a",
  "source": {
    "blob": "de6d85b0e8b7751aa61d506a7060b32350efb108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bceb1aeb2aa31d565023c9a14dc47e00f2e38339acbaa8aa55d34a46337c083",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce986398-ae34-db8d-c0f0-495f33506e56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eraseIdx_eq_take_drop_succ {xs : Array α} {i : Nat} (h) :
    xs.eraseIdx i h = xs.take i ++ xs.drop (i + 1) := by
  rcases xs with ⟨xs⟩
  simp only [List.size_toArray] at h
  simp only [List.eraseIdx_toArray, List.eraseIdx_eq_take_drop_succ, take_eq_extract,
    List.extract_toArray, List.extract_eq_take_drop, Nat.sub_zero, List.drop_zero, drop_eq_extract,
    List.size_toArray, List.append_toArray, mk.injEq, List.append_cancel_left_eq]
  rw [List.take_of_length_le]
  simp

grind_pattern eraseIdx_eq_take_drop_succ => xs.eraseIdx i h, xs.take i
grind_pattern eraseIdx_eq_take_drop_succ => xs.eraseIdx i h, xs.drop i

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6d85b0e8b7751aa61d506a7060b32350efb108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
