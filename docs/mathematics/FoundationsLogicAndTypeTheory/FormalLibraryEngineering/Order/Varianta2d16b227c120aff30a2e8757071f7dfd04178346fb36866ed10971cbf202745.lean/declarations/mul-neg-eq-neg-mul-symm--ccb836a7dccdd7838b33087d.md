# mul_neg_eq_neg_mul_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b5e39db26d3b76ff8b6d495df416a1b083b1189",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c634090-5c42-6c52-da0a-59acfe12cc67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c2681d0-afe4-cfd1-8d5b-c16a08a3208c",
  "kind": "theorem",
  "lexical_name": "mul_neg_eq_neg_mul_symm",
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
  "slug": "mul-neg-eq-neg-mul-symm--ccb836a7dccdd7838b33087d",
  "source": {
    "blob": "2b5e39db26d3b76ff8b6d495df416a1b083b1189",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb836a7dccdd7838b33087d51c68ce61635ca99872231c59e4ceb956fd0fdb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c2681d0-afe4-cfd1-8d5b-c16a08a3208c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_neg_eq_neg_mul_symm (a b : ℤ) : a * -b = -(a * b) := (Int.neg_mul_eq_mul_neg a b).symm
#align int.mul_neg_eq_neg_mul_symm Int.mul_neg_eq_neg_mul_symm

#align int.of_nat_nonneg Int.ofNat_nonneg
#align int.coe_succ_pos Int.ofNat_succ_pos
#align int.exists_eq_neg_of_nat Int.exists_eq_neg_ofNat
#align int.nat_abs_of_nonneg Int.natAbs_of_nonneg
#align int.of_nat_nat_abs_of_nonpos Int.ofNat_natAbs_of_nonpos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Varianta2d16b227c120aff30a2e8757071f7dfd04178346fb36866ed10971cbf202745.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b5e39db26d3b76ff8b6d495df416a1b083b1189` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
