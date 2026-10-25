# star'_equiv_star

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:239cf800-3401-4924-e753-e57e5d3689ce",
  "kind": "theorem",
  "lexical_name": "star'_equiv_star",
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
  "slug": "star-equiv-star--364b08d3df22f49c7088b648",
  "source": {
    "blob": "c51b8f7c76f1fd0d5dd5439b1591b4a2b348d386",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:364b08d3df22f49c7088b648fcf931ee2ea1bf1956cd8c18b923dc19f40427f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:239cf800-3401-4924-e753-e57e5d3689ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star'_equiv_star : star' ≈ star := by
  have le : star' ≤ star := by
    apply PGame.le_of_forall_lf
    · rintro ⟨i⟩
      fin_cases i
      · exact zero_lf_star
      · exact (neg_lt_zero_iff.2 PGame.zero_lt_one).trans_lf zero_lf_star
    · exact fun _ => lf_zero_le.2 ⟨⟨0, Nat.zero_lt_two⟩, le_rfl⟩
  constructor
  case' right => rw [← neg_le_neg_iff, neg_star, neg_star']
  assumption'

/-- The equation `** = *` is an identity, though not a relabelling. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/GameMultiplication/Variantacea3516a3fde526625be6c2941312713bbda3ea90dea9d0ebb6f823418f2b79.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c51b8f7c76f1fd0d5dd5439b1591b4a2b348d386` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
