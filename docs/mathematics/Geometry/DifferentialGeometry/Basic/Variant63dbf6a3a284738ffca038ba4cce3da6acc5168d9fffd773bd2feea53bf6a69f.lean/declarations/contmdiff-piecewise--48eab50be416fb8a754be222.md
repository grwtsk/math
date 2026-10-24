# ContMDiff.piecewise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d607e0eef7ba6b658d1bd6702b327f5093350219",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 278,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63dbf6a3a284738ffca038ba4cce3da6acc5168d9fffd773bd2feea53bf6a69f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13280986-b419-6cd1-38fe-e5179b51c57c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e237f1f-60dd-34d2-a318-1115fb28aa1b",
  "kind": "lemma",
  "lexical_name": "ContMDiff.piecewise",
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
  "slug": "contmdiff-piecewise--48eab50be416fb8a754be222",
  "source": {
    "blob": "d607e0eef7ba6b658d1bd6702b327f5093350219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 278,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant63dbf6a3a284738ffca038ba4cce3da6acc5168d9fffd773bd2feea53bf6a69f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48eab50be416fb8a754be22238f66c07459083a8583adf443966bb62acefd206",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant63dbf6a3a284738ffca038ba4cce3da6acc5168d9fffd773bd2feea53bf6a69f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e237f1f-60dd-34d2-a318-1115fb28aa1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 278–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.piecewise
    {f g : M → M'} {s : Set M} [DecidablePred (· ∈ s)]
    (hf : ContMDiff I I' n f) (hg : ContMDiff I I' n g)
    (hfg : ∀ x ∈ frontier s, f =ᶠ[𝓝 x] g) :
    ContMDiff I I' n (piecewise s f g) := by
  intro x
  by_cases hx : x ∈ interior s
  · apply (hf x).congr_of_eventuallyEq
    filter_upwards [isOpen_interior.mem_nhds hx] with y hy
    rw [piecewise_eq_of_mem]
    apply interior_subset hy
  by_cases h'x : x ∈ closure s
  · have : x ∈ frontier s := ⟨h'x, hx⟩
    apply (hf x).congr_of_eventuallyEq
    filter_upwards [hfg x this] with y hy
    simp [Set.piecewise, hy]
  · apply (hg x).congr_of_eventuallyEq
    filter_upwards [isClosed_closure.isOpen_compl.mem_nhds h'x] with y hy
    rw [piecewise_eq_of_notMem]
    contrapose hy
    simpa using subset_closure hy

/-- Given two `C^n` functions `f` and `g` from `ℝ` to a real manifold which coincide locally
around a point `s`, then the piecewise function using `f` before `t` and `g` after is `C^n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant63dbf6a3a284738ffca038ba4cce3da6acc5168d9fffd773bd2feea53bf6a69f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant63dbf6a3a284738ffca038ba4cce3da6acc5168d9fffd773bd2feea53bf6a69f.lean#L278).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d607e0eef7ba6b658d1bd6702b327f5093350219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
