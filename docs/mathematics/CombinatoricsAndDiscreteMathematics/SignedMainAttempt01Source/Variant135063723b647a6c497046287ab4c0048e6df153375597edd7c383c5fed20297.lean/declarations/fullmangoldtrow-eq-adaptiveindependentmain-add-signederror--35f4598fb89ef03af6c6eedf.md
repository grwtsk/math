# fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca963a69-5205-ccd3-e520-332bce6589b6",
  "kind": "theorem",
  "lexical_name": "fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError",
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
  "slug": "fullmangoldtrow-eq-adaptiveindependentmain-add-signederror--35f4598fb89ef03af6c6eedf",
  "source": {
    "blob": "69c62ac1f55259a9059f20c4d04ee2b3c2c077eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35f4598fb89ef03af6c6eedfb00792ea6b2a9965a2a7786805e6e39ac13a1583",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca963a69-5205-ccd3-e520-332bce6589b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError
    (A : ℝ) (hA : 1 ≤ A) :
    fullMangoldtRow A = adaptiveIndependentMain A + adaptiveSignedSamplingError A := by
  rw [fullMangoldtRow_eq_adaptiveSampledHead A hA]
  unfold adaptiveSampledHead adaptiveIndependentMain adaptiveSignedSamplingError
    adaptiveLogSample adaptivePlainSample
  simp_rw [mul_sub, Finset.sum_sub_distrib, Finset.mul_sum]
  ring

end RH16AdaptiveVaughan
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SignedMainAttempt01Source/Variant135063723b647a6c497046287ab4c0048e6df153375597edd7c383c5fed20297.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69c62ac1f55259a9059f20c4d04ee2b3c2c077eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
