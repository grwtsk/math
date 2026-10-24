# shortExact_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fc1b09e-9ce6-0a7b-4b83-bac8b5da4a70",
  "kind": "lemma",
  "lexical_name": "shortExact_of_iso",
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
  "slug": "shortexact-of-iso--3a2448dd6ad9e6170a75328e",
  "source": {
    "blob": "dc07497b23cb40a605583ffe9cd0ca9fa0deb3fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a2448dd6ad9e6170a75328ec33f7b0a7617d953dc4fc47fbefd2b51b3ac10f0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc1b09e-9ce6-0a7b-4b83-bac8b5da4a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shortExact_of_iso (e : S₁ ≅ S₂) (h : S₁.ShortExact) : S₂.ShortExact where
  exact := exact_of_iso e h.exact
  mono_f := by
    suffices Mono (S₂.f ≫ e.inv.τ₂) by
      exact mono_of_mono _ e.inv.τ₂
    have := h.mono_f
    rw [← e.inv.comm₁₂]
    apply mono_comp
  epi_g := by
    suffices Epi (e.hom.τ₂ ≫ S₂.g) by
      exact epi_of_epi e.hom.τ₂ _
    have := h.epi_g
    rw [e.hom.comm₂₃]
    apply epi_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Varianta909334718b2fd43f243e66aa5c0abe0786e6b80ee088c1f84d348c6c89e4385.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc07497b23cb40a605583ffe9cd0ca9fa0deb3fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
