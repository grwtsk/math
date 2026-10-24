# actual_four_nine_weight_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71612269-96cb-c9d5-2ced-a68d7b9610d5",
  "kind": "theorem",
  "lexical_name": "actual_four_nine_weight_sum",
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
  "slug": "actual-four-nine-weight-sum--c117920b3d34c0ea0fbe70fe",
  "source": {
    "blob": "42438750038ace1bba771f4397ae09b1f8dbe435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSampling/Variant7ce3610098ae108fdeb804e7e36d021442224643166b74892942ed7c4397edd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c117920b3d34c0ea0fbe70febcc82d03bd2e780bcff3e237c774f4924bc1cf00",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSampling/Variant7ce3610098ae108fdeb804e7e36d021442224643166b74892942ed7c4397edd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71612269-96cb-c9d5-2ced-a68d7b9610d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_four_nine_weight_sum (N : Nat) :
    (Finset.Icc 1 N).sum (fun d => abs (realMoebius d) / Real.sqrt (d : Real)) <=
      (4 / 3 : Real) * Real.sqrt (N : Real) + 1 / 2 := by
  simpa only [squarefreeWeightSum, realMoebius] using squarefreeWeightSum_four_thirds N

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSampling/Variant7ce3610098ae108fdeb804e7e36d021442224643166b74892942ed7c4397edd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSampling/Variant7ce3610098ae108fdeb804e7e36d021442224643166b74892942ed7c4397edd7.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42438750038ace1bba771f4397ae09b1f8dbe435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
