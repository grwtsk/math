# sphereVolumeHistory_second_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11eca7b2cf811baab5e0a310d19108edbe815d76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1c84ba7-5de1-9cca-7004-08085ce17cd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7398ea34-6990-df3f-6b74-acf266e34ca5",
  "kind": "theorem",
  "lexical_name": "sphereVolumeHistory_second_derivative",
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
  "slug": "spherevolumehistory-second-derivative--0ad927e7f2be30d67f4f64b1",
  "source": {
    "blob": "11eca7b2cf811baab5e0a310d19108edbe815d76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 67,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad927e7f2be30d67f4f64b18133a9ae9a82b85e774abfa7b196ff0c9ccf9839",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7398ea34-6990-df3f-6b74-acf266e34ca5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sphereVolumeHistory_second_derivative (radius : ℝ → ℝ)
    (regular : ContDiff ℝ 2 radius) (time : ℝ) :
    deriv (deriv (sphereVolumeHistory radius)) time =
      4 * Real.pi * radius time *
        (2 * deriv radius time ^ 2 + radius time * deriv (deriv radius) time) := by
  have first : deriv (sphereVolumeHistory radius) =
      fun t => 4 * Real.pi * radius t ^ 2 * deriv radius t :=
    funext fun t => (sphereVolumeHistory_derivative radius
      (regular.differentiable (by norm_num)) t).deriv
  rw [first]
  have hr := (regular.differentiable (by norm_num) time).hasDerivAt
  have hrr := (regular.differentiable_deriv_two time).hasDerivAt
  convert! ((hr.pow 2).const_mul (4 * Real.pi) |>.mul hrr).deriv using 1
  dsimp
  ring

/-- The spherical pressure identity follows from actual radius and volume derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11eca7b2cf811baab5e0a310d19108edbe815d76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
