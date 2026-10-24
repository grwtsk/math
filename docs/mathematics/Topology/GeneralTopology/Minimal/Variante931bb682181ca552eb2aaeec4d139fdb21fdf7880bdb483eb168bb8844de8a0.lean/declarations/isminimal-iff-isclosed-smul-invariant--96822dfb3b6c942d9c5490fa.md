# isMinimal_iff_isClosed_smul_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf84dc38-64ab-981f-6cfb-d64e03daee57",
  "kind": "theorem",
  "lexical_name": "isMinimal_iff_isClosed_smul_invariant",
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
  "slug": "isminimal-iff-isclosed-smul-invariant--96822dfb3b6c942d9c5490fa",
  "source": {
    "blob": "38d82850b76f2d79fe77e15be44e3e0b694c1c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96822dfb3b6c942d9c5490facb02f09960236c34dd74cc72b273e190bc284853",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf84dc38-64ab-981f-6cfb-d64e03daee57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMinimal_iff_isClosed_smul_invariant [ContinuousConstSMul M α] :
    IsMinimal M α ↔ ∀ s : Set α, IsClosed s → (∀ c : M, c • s ⊆ s) → s = ∅ ∨ s = univ := by
  constructor
  · intro _ _
    exact eq_empty_or_univ_of_smul_invariant_closed M
  refine fun H ↦ ⟨fun _ ↦ dense_iff_closure_eq.2 <| (H _ ?_ ?_).resolve_left ?_⟩
  exacts [isClosed_closure, fun _ ↦ smul_closure_orbit_subset _ _,
    (orbit_nonempty _).closure.ne_empty]
@[deprecated (since := "2024-11-19")] alias
isMinimal_iff_closed_smul_invariant := isMinimal_iff_isClosed_smul_invariant
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Minimal/Variante931bb682181ca552eb2aaeec4d139fdb21fdf7880bdb483eb168bb8844de8a0.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38d82850b76f2d79fe77e15be44e3e0b694c1c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
