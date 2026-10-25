# instLinearOrderInt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15a8653849b8c8c43d73ee6a8fa2b573e9a53db2936fa28f6301d2bbd7ccfa60",
  "kind": "instance",
  "lexical_name": "instLinearOrderInt",
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
  "slug": "instlinearorderint--3dad7d5261903db9f4f4f965",
  "source": {
    "blob": "cc9e8950383f77099dc47506ee3e2bf488984424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3dad7d5261903db9f4f4f965c66684c09ffda12a26b64c579a9cc8425ccaeab0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15a8653849b8c8c43d73ee6a8fa2b573e9a53db2936fa28f6301d2bbd7ccfa60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instLinearOrderInt : LinearOrder ℤ where
  le := (·≤·)
  le_refl := Int.le_refl
  le_trans := @Int.le_trans
  le_antisymm := @Int.le_antisymm
  lt := (·<·)
  lt_iff_le_not_le := @Int.lt_iff_le_not_le
  le_total := Int.le_total
  decidableEq := by infer_instance
  decidableLE := by infer_instance
  decidableLT := by infer_instance

#align int.eq_nat_abs_of_zero_le Int.eq_natAbs_of_zero_le
#align int.le_nat_abs Int.le_natAbs
#align int.eq_neg_succ_of_lt_zero Int.eq_negSucc_of_lt_zero
#align int.sub_eq_zero_iff_eq Int.sub_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variantd1718355a7092f24b5e638ed30cbf3b54a128a52c2c7733ba966b0cebc358c62.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc9e8950383f77099dc47506ee3e2bf488984424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
