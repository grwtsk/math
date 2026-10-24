# ConvexIndependent.range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f314e91a-de7b-5aa4-4f79-e227cbb85147",
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
  "slug": "convexindependent-range--4ab17aa7c3d8b0be5a1b1103",
  "source": {
    "blob": "e884c4536a14a09ea9beeff54c3be7fa7d814a80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 95,
    "path": "GRWTSK/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ab17aa7c3d8b0be5a1b1103a3c5b2b4f8af5c589f7d8aa98cab9a9f7961b11f",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f314e91a-de7b-5aa4-4f79-e227cbb85147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem ConvexIndependent.range {p : ι → E} (hc : ConvexIndependent 𝕜 p) :
    ConvexIndependent 𝕜 ((↑) : Set.range p → E) := by
  let f : Set.range p → ι := fun x => x.property.choose
  have hf : ∀ x, p (f x) = x := fun x => x.property.choose_spec
  let fe : Set.range p ↪ ι := ⟨f, fun x₁ x₂ he => Subtype.ext (hf x₁ ▸ hf x₂ ▸ he ▸ rfl)⟩
  convert hc.comp_embedding fe
  ext
  rw [Embedding.coeFn_mk, comp_apply, hf]

/-- A subset of a convex independent set of points is convex independent as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Independent/Variant209fcc703a01b9f0a11cbcb494c7f65628fdfcda96077ff99cbe5815c4857687.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e884c4536a14a09ea9beeff54c3be7fa7d814a80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
