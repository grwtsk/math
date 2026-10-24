# eq_principal_of_finite_sets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4190fd75-8c05-87c6-72ed-a6da2d733754",
  "kind": "theorem",
  "lexical_name": "eq_principal_of_finite_sets",
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
  "slug": "eq-principal-of-finite-sets--c6fe8758552cda3f3e7f921c",
  "source": {
    "blob": "93f8cffa6faaef3d47ff4938d16268a191cb2b2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6fe8758552cda3f3e7f921c1b118885cf0b41e2e85be6bbb88d0cc739b62f6a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4190fd75-8c05-87c6-72ed-a6da2d733754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_principal_of_finite_sets (hf : f.sets.Finite) : ∃ s, f = 𝓟 s := by
  use ⋂₀ f.sets
  exact Filter.ext fun B ↦ ⟨sInter_subset_of_mem, mem_of_superset ((sInter_mem hf).2 (by simp))⟩

/-- Any filter on a finite type is principal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant7771eb7342861d3281dd0acc6bdeb5d9fd96f118c03dd11801fb6c307a843bab.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93f8cffa6faaef3d47ff4938d16268a191cb2b2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
