# MDifferentiable.inner_bundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af8bbb3df901d123781021107946586776b2ff3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/044b397c80cc85430415afd4f976195943dd0015170cd0388d445dc09098c979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cccc98a0-3b90-d89b-5189-04352aab5d67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c4b9ef18-9ccb-6687-4083-297e31b0312f",
  "kind": "lemma",
  "lexical_name": "MDifferentiable.inner_bundle",
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
  "slug": "mdifferentiable-inner-bundle--f5c02d720369770a08ba8b41",
  "source": {
    "blob": "af8bbb3df901d123781021107946586776b2ff3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 213,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Riemannian/Variant044b397c80cc85430415afd4f976195943dd0015170cd0388d445dc09098c979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5c02d720369770a08ba8b4191236a7afc07a4a5468cf9c1b20532947f9fa1b1",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Riemannian/Variant044b397c80cc85430415afd4f976195943dd0015170cd0388d445dc09098c979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4b9ef18-9ccb-6687-4083-297e31b0312f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MDifferentiable.inner_bundle
    (hv : MDiff (fun m ↦ (v m : TotalSpace F E)))
    (hw : MDiff (fun m ↦ (w m : TotalSpace F E))) :
    MDiff (fun b ↦ ⟪v b, w b⟫) :=
  fun x ↦ (hv x).inner_bundle (hw x)

end MDifferentiable

end

namespace Bundle

section Construction

variable
  {EB : Type*} [NormedAddCommGroup EB] [NormedSpace ℝ EB]
  {HB : Type*} [TopologicalSpace HB] {IB : ModelWithCorners ℝ EB HB} {n n' : ℕ∞ω}
  {B : Type*} [TopologicalSpace B] [ChartedSpace HB B]
  {F : Type*} [NormedAddCommGroup F] [NormedSpace ℝ F]
  {E : B → Type*} [TopologicalSpace (TotalSpace F E)]
  [∀ b, TopologicalSpace (E b)] [∀ b, AddCommGroup (E b)] [∀ b, Module ℝ (E b)]
  [∀ b, IsTopologicalAddGroup (E b)] [∀ b, ContinuousConstSMul ℝ (E b)]
  [FiberBundle F E] [VectorBundle ℝ F E]

variable (IB n F E) in
/-- A family of inner product space structures on the fibers of a fiber bundle, defining the same
topology as the already existing one, and varying continuously with the base point. See also
`ContinuousRiemannianMetric` for a continuous version.

This structure is used through `RiemannianBundle` for typeclass inference, to register the inner
product space structure on the fibers without creating diamonds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Riemannian/Variant044b397c80cc85430415afd4f976195943dd0015170cd0388d445dc09098c979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Riemannian/Variant044b397c80cc85430415afd4f976195943dd0015170cd0388d445dc09098c979.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af8bbb3df901d123781021107946586776b2ff3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
