# enorm_fderiv_norm_rpow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ed51cec2ff41e1670fe752f784cf3e02ffb898",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b778c649-3590-af49-967e-6785d0b1d625",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05d8ffe9-4c03-ce51-e480-a07d1d05d0c6",
  "kind": "lemma",
  "lexical_name": "enorm_fderiv_norm_rpow_le",
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
  "slug": "enorm-fderiv-norm-rpow-le--622f1bbc4a50b67fe1371b1d",
  "source": {
    "blob": "41ed51cec2ff41e1670fe752f784cf3e02ffb898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:622f1bbc4a50b67fe1371b1d4ab4bcaea6167f0c6578e7d7e6a50e2c09b9f62e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05d8ffe9-4c03-ce51-e480-a07d1d05d0c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma enorm_fderiv_norm_rpow_le {f : F → E} (hf : Differentiable ℝ f)
    {x : F} {p : ℝ≥0} (hp : 1 < p) :
    ‖fderiv ℝ (fun x ↦ ‖f x‖ ^ (p : ℝ)) x‖ₑ ≤ p * ‖f x‖ₑ ^ ((p : ℝ) - 1) * ‖fderiv ℝ f x‖ₑ := by
  simpa [enorm, ← ENNReal.coe_rpow_of_nonneg _ (sub_nonneg.2 <| NNReal.one_le_coe.2 hp.le),
    ← ENNReal.coe_mul] using nnnorm_fderiv_norm_rpow_le hf hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NormPow/Variant264475d234c278e05658b4f479cb1495ee4288729d54ec1e81bd252fa1918a0c.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ed51cec2ff41e1670fe752f784cf3e02ffb898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
