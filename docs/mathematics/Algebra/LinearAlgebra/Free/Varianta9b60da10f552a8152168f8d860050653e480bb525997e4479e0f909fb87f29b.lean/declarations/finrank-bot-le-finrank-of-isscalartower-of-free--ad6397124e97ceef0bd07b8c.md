# finrank_bot_le_finrank_of_isScalarTower_of_free

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d5031c20-71b6-38a2-9a7b-6811cbccb37f",
  "kind": "lemma",
  "lexical_name": "finrank_bot_le_finrank_of_isScalarTower_of_free",
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
  "slug": "finrank-bot-le-finrank-of-isscalartower-of-free--ad6397124e97ceef0bd07b8c",
  "source": {
    "blob": "56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 310,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad6397124e97ceef0bd07b8cc80e39ccd7b4b61afce3b52993e0f4b558c3a30e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5031c20-71b6-38a2-9a7b-6811cbccb37f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_bot_le_finrank_of_isScalarTower_of_free (S T : Type*) [Semiring S] [Semiring T]
    [Module R T] [Module S T] [Module R S] [IsScalarTower R S T]
    [IsScalarTower S T T] [FaithfulSMul S T] [Module.Finite S T] [Module.Free R S] :
    finrank R S ≤ finrank R T := by
  by_cases H : Module.Finite R S
  · have := Module.Finite.trans (R := R) S T
    exact finrank_bot_le_finrank_of_isScalarTower R S T
  · rw [finrank, Cardinal.toNat_eq_zero.mpr (.inr _)]
    · exact zero_le
    · rwa [← not_lt, Module.rank_lt_aleph0_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Varianta9b60da10f552a8152168f8d860050653e480bb525997e4479e0f909fb87f29b.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56f78c3c06bdc64d23e6ad9345fccd34eddfcbc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
