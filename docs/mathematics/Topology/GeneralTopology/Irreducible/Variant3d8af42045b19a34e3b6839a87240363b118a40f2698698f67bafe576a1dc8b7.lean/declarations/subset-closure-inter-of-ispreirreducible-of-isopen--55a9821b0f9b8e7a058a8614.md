# subset_closure_inter_of_isPreirreducible_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:539dde14-e193-88c9-950b-fed9769a1683",
  "kind": "theorem",
  "lexical_name": "subset_closure_inter_of_isPreirreducible_of_isOpen",
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
  "slug": "subset-closure-inter-of-ispreirreducible-of-isopen--55a9821b0f9b8e7a058a8614",
  "source": {
    "blob": "1f7c0c0526985238db903b4bce3346d9f268de23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 300,
    "path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a9821b0f9b8e7a058a8614b0be82bfa592aabf784f31cf28cc2d6a47052a30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:539dde14-e193-88c9-950b-fed9769a1683`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_closure_inter_of_isPreirreducible_of_isOpen {S U : Set X} (hS : IsPreirreducible S)
    (hU : IsOpen U) (h : (S ∩ U).Nonempty) : S ⊆ closure (S ∩ U) := by
  by_contra h'
  obtain ⟨x, h₁, h₂, h₃⟩ :=
    hS _ (closure (S ∩ U))ᶜ hU isClosed_closure.isOpen_compl h (inter_compl_nonempty_iff.mpr h')
  exact h₃ (subset_closure ⟨h₁, h₂⟩)

/-- If `∅ ≠ U ⊆ S ⊆ t` such that `U` is open and `t` is preirreducible, then `S` is irreducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f7c0c0526985238db903b4bce3346d9f268de23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
