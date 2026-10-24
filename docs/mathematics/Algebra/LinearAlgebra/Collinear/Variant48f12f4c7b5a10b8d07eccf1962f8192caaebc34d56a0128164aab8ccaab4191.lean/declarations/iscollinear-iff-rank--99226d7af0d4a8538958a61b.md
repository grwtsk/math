# IsCollinear_iff_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b543b590-c15c-b4bb-b20c-c7737035b33a",
  "kind": "lemma",
  "lexical_name": "IsCollinear_iff_rank",
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
  "slug": "iscollinear-iff-rank--99226d7af0d4a8538958a61b",
  "source": {
    "blob": "27cec2c95500e58a284153b02caeba555f9e7406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99226d7af0d4a8538958a61b384fccd2607ecb1d400f2ca30ebf20b2413691b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b543b590-c15c-b4bb-b20c-c7737035b33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCollinear_iff_rank :
    IsCollinear S ↔
      ∃ (M : Subspace K V), Module.rank K M.submodule ≤ 2 ∧ S ⊆ M := by
  rw [IsCollinear_iff]
  refine ⟨fun ⟨M, hM1, hM2, hM3⟩ ↦ ⟨M, ?_, hM3⟩, fun ⟨M, hM1, hM2⟩ ↦ ⟨M, ?_, ?_, hM2⟩⟩
  · exact FiniteDimensional.finrank_le_iff_rank_le (K := K) (V := M.submodule) (n := 2)|>.1 hM2
  · exact Module.rank_lt_aleph0_iff.1 (hM1.trans_lt (by norm_num))
  · exact Module.finrank_le_of_rank_le hM1

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Collinear/Variant48f12f4c7b5a10b8d07eccf1962f8192caaebc34d56a0128164aab8ccaab4191.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27cec2c95500e58a284153b02caeba555f9e7406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
