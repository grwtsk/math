# ConvexIndependent.range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6bb28916ba51c59f00f50367ab5ae2d909dbb1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c89ed36-42a2-ce01-b190-0b1bea6b03aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c13c3b3-b042-1681-640b-c521515614eb",
  "kind": "theorem",
  "lexical_name": "ConvexIndependent.range",
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
  "slug": "convexindependent-range--48d0ac87dac1da7665fcd014",
  "source": {
    "blob": "a6bb28916ba51c59f00f50367ab5ae2d909dbb1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 92,
    "path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48d0ac87dac1da7665fcd0144c09e6610c262dab2db8bdee48cc07fa62d82aac",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c13c3b3-b042-1681-640b-c521515614eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ConvexIndependent.range {p : ι → E} (hc : ConvexIndependent 𝕜 p) :
    ConvexIndependent 𝕜 ((↑) : Set.range p → E) := by
  let f : Set.range p → ι := fun x => x.property.choose
  have hf : ∀ x, p (f x) = x := fun x => x.property.choose_spec
  let fe : Set.range p ↪ ι := ⟨f, fun x₁ x₂ he => Subtype.ext (hf x₁ ▸ hf x₂ ▸ he ▸ rfl)⟩
  convert! hc.comp_embedding fe
  ext
  rw [Embedding.coeFn_mk, comp_apply, hf]

/-- A subset of a convex independent set of points is convex independent as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Independent/Variantddc844a70a1ddd2c838b576aba2c945ec313a7502e217142a424a3873bcc6c0e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6bb28916ba51c59f00f50367ab5ae2d909dbb1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
