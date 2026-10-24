# rankThreeKernel_eq_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f17319a9-d8ac-f719-4267-76f5e820ea75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1dbae8ce-e51b-371a-5fa1-3368c667ea88",
  "kind": "theorem",
  "lexical_name": "rankThreeKernel_eq_det",
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
  "slug": "rankthreekernel-eq-det--3fe473a216f5cfbc60b743d9",
  "source": {
    "blob": "2f99fc53f2340308500a0932cba2d045d6032744",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fe473a216f5cfbc60b743d9adb85411fdeb282d6359445b817915a665ffb84e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dbae8ce-e51b-371a-5fa1-3368c667ea88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rankThreeKernel_eq_det (f0 f1 f2 : ℝ → ℝ) (u v w : ℝ) :
    rankThreeKernel f0 f1 f2 ((u, v), w) =
      Matrix.det !![f0 u, f0 v, f0 w;
        f1 u, f1 v, f1 w;
        f2 u, f2 v, f2 w] := by
  simp [rankThreeKernel, Matrix.det_fin_three]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant86e3d79c6866e35d449d8f117b2545cd85d0efe33694a2483812c6d72b27c63b.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f99fc53f2340308500a0932cba2d045d6032744` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
