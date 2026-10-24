# toHomeomorphOfContinuousOpen_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "224c640df2eada4d7e2dda00a45ca5598780d17b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 389,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f98000ca-7694-1854-bac6-a926f2958cf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ade941e-171c-6efb-fe64-876585c6bb7f",
  "kind": "theorem",
  "lexical_name": "toHomeomorphOfContinuousOpen_symm_apply",
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
  "slug": "tohomeomorphofcontinuousopen-symm-apply--921b68d86f465d8a841c0907",
  "source": {
    "blob": "224c640df2eada4d7e2dda00a45ca5598780d17b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 389,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:921b68d86f465d8a841c0907ea10af06196288a1e0ef9b757c528eac890d03f4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ade941e-171c-6efb-fe64-876585c6bb7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toHomeomorphOfContinuousOpen_symm_apply (e : X ≃ Y) (h₁ : Continuous e) (h₂ : IsOpenMap e) :
    ⇑(e.toHomeomorphOfContinuousOpen h₁ h₂).symm = e.symm := rfl

@[deprecated (since := "2025-04-16")]
alias _root_.Homeomorph.homeomorphOfContinuousOpen_symm_apply :=
  toHomeomorphOfContinuousOpen_symm_apply

/-- If a bijective map `e : X ≃ Y` is continuous and open, then it is a homeomorphism. -/
@[simps! toEquiv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant20faf19efd2f7e038ee831c6aef3989050698cbb6a5eb1f3d3e478566abd2f9f.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `224c640df2eada4d7e2dda00a45ca5598780d17b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
