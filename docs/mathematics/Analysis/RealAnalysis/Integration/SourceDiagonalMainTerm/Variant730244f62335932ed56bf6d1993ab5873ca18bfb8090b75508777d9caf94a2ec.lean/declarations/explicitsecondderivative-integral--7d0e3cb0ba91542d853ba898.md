# explicitSecondDerivative_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69eba3722a4674bf6658fd90129be08f8f6fefa2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eefe248f-cc6f-e470-81e8-c127e4a32455",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fb96358-6ea2-ff52-f4c1-cba6eb7544a8",
  "kind": "theorem",
  "lexical_name": "explicitSecondDerivative_integral",
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
  "slug": "explicitsecondderivative-integral--7d0e3cb0ba91542d853ba898",
  "source": {
    "blob": "69eba3722a4674bf6658fd90129be08f8f6fefa2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d0e3cb0ba91542d853ba898facfe06421c22fc09fbc8504e427c921361159a8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fb96358-6ea2-ff52-f4c1-cba6eb7544a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicitSecondDerivative_integral (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ, explicitSecondDerivative A x) = 0 := by
  rw [explicitSecondDerivative, zeroExtension_integral _ (-A) A (by linarith)]
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ => firstInterior_hasDerivAt A x)
    ((secondInterior_continuous A).intervalIntegrable (-A) A)
  rw [(firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2] at h
  simpa using h

/-- The amplitude scaling retains exactly the source square-root factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceDiagonalMainTerm/Variant730244f62335932ed56bf6d1993ab5873ca18bfb8090b75508777d9caf94a2ec.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69eba3722a4674bf6658fd90129be08f8f6fefa2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
