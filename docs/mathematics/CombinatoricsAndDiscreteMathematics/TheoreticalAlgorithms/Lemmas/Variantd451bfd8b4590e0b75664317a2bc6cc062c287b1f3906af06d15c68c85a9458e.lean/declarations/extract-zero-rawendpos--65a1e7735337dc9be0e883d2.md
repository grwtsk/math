# extract_zero_rawEndPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c025ad32-27ad-aef9-fb78-d347848da3c1",
  "kind": "theorem",
  "lexical_name": "extract_zero_rawEndPos",
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
  "slug": "extract-zero-rawendpos--65a1e7735337dc9be0e883d2",
  "source": {
    "blob": "7a6ca8696ba692a69ac587d6a9b0f1c102ffe104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 493,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a1e7735337dc9be0e883d2a8cd9be2e5d3a7cdd6299edcf51852711b806a1c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c025ad32-27ad-aef9-fb78-d347848da3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extract_zero_rawEndPos (s : String) : Pos.Raw.extract s 0 (rawEndPos s) = s := by
  obtain ⟨l, rfl⟩ := s.exists_eq_ofList
  match l with
  | [] => rfl
  | c :: cs =>
    simp only [Pos.Raw.extract, Pos.Raw.byteIdx_zero, rawEndPos_ofList, utf8Len_cons, ge_iff_le,
      Nat.le_zero_eq, Nat.ne_of_gt add_utf8Size_pos, ↓reduceIte, String.toList_ofList]
    congr
    apply Pos.Raw.extract.go₁_zero_utf8Len

@[deprecated extract_zero_rawEndPos (since := "2025-10-21")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantd451bfd8b4590e0b75664317a2bc6cc062c287b1f3906af06d15c68c85a9458e.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a6ca8696ba692a69ac587d6a9b0f1c102ffe104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
