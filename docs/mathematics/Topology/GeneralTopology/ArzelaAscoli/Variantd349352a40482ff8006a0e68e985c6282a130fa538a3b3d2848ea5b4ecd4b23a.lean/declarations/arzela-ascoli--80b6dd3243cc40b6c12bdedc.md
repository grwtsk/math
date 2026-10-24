# arzela_ascoli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a694ff93-c00b-bcaa-44bd-4a151f3eaa93",
  "kind": "theorem",
  "lexical_name": "arzela_ascoli",
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
  "slug": "arzela-ascoli--80b6dd3243cc40b6c12bdedc",
  "source": {
    "blob": "3ec1c191c6d6aeaee53fa594757b34e3e9689b1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/ArzelaAscoli/Variantd349352a40482ff8006a0e68e985c6282a130fa538a3b3d2848ea5b4ecd4b23a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80b6dd3243cc40b6c12bdedce239c2da4bfe13f0c9d888b4acb2d6eb04dde5f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ArzelaAscoli/Variantd349352a40482ff8006a0e68e985c6282a130fa538a3b3d2848ea5b4ecd4b23a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a694ff93-c00b-bcaa-44bd-4a151f3eaa93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arzela_ascoli [T2Space β] (s : Set β) (hs : IsCompact s) (A : Set (α →ᵇ β))
    (in_s : ∀ (f : α →ᵇ β) (x : α), f ∈ A → f x ∈ s) (H : Equicontinuous ((↑) : A → α → β)) :
    IsCompact (closure A) :=
  /- This version is deduced from the previous one by checking that the closure of `A`, in
  addition to being closed, still satisfies the properties of compact range and equicontinuity. -/
  arzela_ascoli₂ s hs (closure A) isClosed_closure
    (fun _ x hf =>
      (mem_of_closed' hs.isClosed).2 fun ε ε0 =>
        let ⟨g, gA, dist_fg⟩ := Metric.mem_closure_iff.1 hf ε ε0
        ⟨g x, in_s g x gA, lt_of_le_of_lt (dist_coe_le_dist _) dist_fg⟩)
    (H.closure' continuous_coe)

end BoundedContinuousFunction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ArzelaAscoli/Variantd349352a40482ff8006a0e68e985c6282a130fa538a3b3d2848ea5b4ecd4b23a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ArzelaAscoli/Variantd349352a40482ff8006a0e68e985c6282a130fa538a3b3d2848ea5b4ecd4b23a.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec1c191c6d6aeaee53fa594757b34e3e9689b1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
