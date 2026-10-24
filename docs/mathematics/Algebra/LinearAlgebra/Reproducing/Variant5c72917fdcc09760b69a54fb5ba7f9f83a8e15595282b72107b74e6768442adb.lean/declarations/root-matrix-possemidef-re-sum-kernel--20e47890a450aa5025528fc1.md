# _root_.Matrix.PosSemidef.re_sum_kernel'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87010768956625462a038736bed01361f0e66b9c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 275,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0dc19319-01b2-be0c-bcfa-bf709b67e3cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0c5daf1-794a-c268-70ca-4c016bc4608c",
  "kind": "theorem",
  "lexical_name": "_root_.Matrix.PosSemidef.re_sum_kernel'",
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
  "slug": "root-matrix-possemidef-re-sum-kernel--20e47890a450aa5025528fc1",
  "source": {
    "blob": "87010768956625462a038736bed01361f0e66b9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 275,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20e47890a450aa5025528fc1eb8d4c1db44572db5dbdbe0f6b0f86879c68e8e8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0c5daf1-794a-c268-70ca-4c016bc4608c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Matrix.PosSemidef.re_sum_kernel' (h : K.PosSemidef) (vv : X →₀ V) :
    0 ≤ RCLike.re (vv.sum fun x w ↦ vv.sum fun x' w' ↦ ⟪K x' x w, w'⟫_𝕜) :=
  (posSemidef_iff_re_sum_kernel'.mp h).2 vv

set_option linter.unusedVariables false in
/-- Auxiliary construction for `OfKernel`. TODO: Privatize -/
@[nolint unusedArguments]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reproducing/Variant5c72917fdcc09760b69a54fb5ba7f9f83a8e15595282b72107b74e6768442adb.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87010768956625462a038736bed01361f0e66b9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
