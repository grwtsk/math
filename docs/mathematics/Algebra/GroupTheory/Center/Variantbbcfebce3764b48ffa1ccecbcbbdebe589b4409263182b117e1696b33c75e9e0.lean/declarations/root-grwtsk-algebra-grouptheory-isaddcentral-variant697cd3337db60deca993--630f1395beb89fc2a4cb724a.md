# _root_.GRWTSK.Algebra.GroupTheory.IsAddCentral.Variant697cd3337db60deca993fbeea0e36b958d761f33abdb410a0f55f569447913d5.MulEquivClass.apply_mem_center_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b323db3d-5c97-c88f-535a-24c57f7a40cf",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.IsAddCentral.Variant697cd3337db60deca993fbeea0e36b958d761f33abdb410a0f55f569447913d5.MulEquivClass.apply_mem_center_iff",
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
  "slug": "root-grwtsk-algebra-grouptheory-isaddcentral-variant697cd3337db60deca993--630f1395beb89fc2a4cb724a",
  "source": {
    "blob": "6d3a4c6c0562701b903c42d78219ee82912378e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 158,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:630f1395beb89fc2a4cb724a92c403e4f42bf8bcce52b919559153ee39b514f5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b323db3d-5c97-c88f-535a-24c57f7a40cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.IsAddCentral.Variant697cd3337db60deca993fbeea0e36b958d761f33abdb410a0f55f569447913d5.MulEquivClass.apply_mem_center_iff {F} [EquivLike F M N] [MulEquivClass F M N]
    (f : F) {x : M} : f x ∈ Set.center N ↔ x ∈ Set.center M := by
  rw [← image_center_eq (f := f)]
  simp [-image_center_eq]

@[to_additive]
alias ⟨_, _root_.MulEquivClass.apply_mem_center⟩ := _root_.GRWTSK.Algebra.GroupTheory.IsAddCentral.Variant697cd3337db60deca993fbeea0e36b958d761f33abdb410a0f55f569447913d5.MulEquivClass.apply_mem_center_iff

@[to_additive mem_addCentralizer]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variantbbcfebce3764b48ffa1ccecbcbbdebe589b4409263182b117e1696b33c75e9e0.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d3a4c6c0562701b903c42d78219ee82912378e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
