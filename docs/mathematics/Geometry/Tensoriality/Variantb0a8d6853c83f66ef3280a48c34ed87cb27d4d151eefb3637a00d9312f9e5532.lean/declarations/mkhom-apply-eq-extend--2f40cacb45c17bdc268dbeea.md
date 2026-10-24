# mkHom_apply_eq_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a494d4bef9dae920d6bac00f9b790c3d6168efcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f0f8c90-2120-9858-e9ea-8f364c7427ca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:609b1f13-373a-29a7-e24c-e811d98cf1aa",
  "kind": "theorem",
  "lexical_name": "mkHom_apply_eq_extend",
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
  "slug": "mkhom-apply-eq-extend--2f40cacb45c17bdc268dbeea",
  "source": {
    "blob": "a494d4bef9dae920d6bac00f9b790c3d6168efcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 215,
    "path": "GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f40cacb45c17bdc268dbeea0f4e53ed174ea362b2ecd58edde108fcbe35a609",
  "verification": {
    "reference": "docs/verification/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:609b1f13-373a-29a7-e24c-e811d98cf1aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkHom_apply_eq_extend {Φ : (Π x : M, V x) → A} {x} (hΦ : TensorialAt I F Φ x) (σ : V x) :
    mkHom Φ x hΦ σ = Φ (extend F σ) :=
  rfl

/-- Given an `A`-valued operation `Φ` on sections of vector bundles `V` and `V'` which is tensorial
at `x` in each argument, the construction `TensorialAt.mkHom₂` provides the associated continuous
linear map `V x →L[𝕜] V' x →L[𝕜] A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a494d4bef9dae920d6bac00f9b790c3d6168efcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
