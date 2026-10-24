# abs_le_interval_radius'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4340fe46dfba1e97488de14f88a8acf6b3d3cdcc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 290,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdb11526-0be9-84a7-8091-863a2d9f3f4d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98386c58-7b96-a438-649a-a6103f28f2c6",
  "kind": "theorem",
  "lexical_name": "abs_le_interval_radius'",
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
  "slug": "abs-le-interval-radius--8378d9b594b3e00870b1008f",
  "source": {
    "blob": "4340fe46dfba1e97488de14f88a8acf6b3d3cdcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 290,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8378d9b594b3e00870b1008f27fec1a38144ae400dae9326024021d7ea81f9ef",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98386c58-7b96-a438-649a-a6103f28f2c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem abs_le_interval_radius' {z : ℝ} {J : IntervalRat} (hz : z ∈ J) :
    |z| ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := by
  simp only [IntervalRat.mem_def] at hz
  rw [abs_le]
  constructor
  · have h1 : -|(J.lo : ℝ)| ≤ J.lo := neg_abs_le _
    have h2 : -(max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|)) ≤ -|(J.lo : ℝ)| := by
      simp only [neg_le_neg_iff]; exact le_max_left _ _
    linarith
  · have h1 : (J.hi : ℝ) ≤ |(J.hi : ℝ)| := le_abs_self _
    have h2 : |(J.hi : ℝ)| ≤ max (|(J.lo : ℝ)|) (|(J.hi : ℝ)|) := le_max_right _ _
    linarith

/-- Helper: z ∈ J means z ∈ [J.lo, J.hi] as real numbers -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Varianta69d8b36f8ab49086a5444e1c3272ee1840e86905d6d3a64f36c18a12376f7df.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4340fe46dfba1e97488de14f88a8acf6b3d3cdcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
