# IsDynCoverOf.nonempty_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e278ee6c-c5c6-a388-92a6-9bb087762562",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3528644d-078f-3ecc-233d-93521c9be6e8",
  "kind": "lemma",
  "lexical_name": "IsDynCoverOf.nonempty_inter",
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
  "slug": "isdyncoverof-nonempty-inter--d1f5cf882de778a16b601505",
  "source": {
    "blob": "834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1f5cf882de778a16b601505a8ed4026d0e1364b44f7ba28ad9a45cf4c28903e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3528644d-078f-3ecc-233d-93521c9be6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsDynCoverOf.nonempty_inter [U.IsSymm] {s : Finset X} (h : IsDynCoverOf T F U n s) :
    ∃ t : Finset X, IsDynCoverOf T F U n t ∧ #t ≤ #s ∧
      ∀ x ∈ t, (ball x (dynEntourage T U n) ∩ F).Nonempty := by
  classical
  use {x ∈ s | (ball x (dynEntourage T U n) ∩ F).Nonempty}
  simp only [Finset.coe_filter, Finset.mem_filter, and_imp, imp_self, implies_true, and_true]
  refine ⟨fun y y_F ↦ ?_, Finset.card_mono (Finset.filter_subset _ s)⟩
  obtain ⟨z, z_s, y_Bz⟩ := h y_F
  exact ⟨z, ⟨z_s, _, (dynEntourage T U n).symm y_Bz, y_F⟩, y_Bz⟩

/-- From a dynamical cover `s` with entourage `U` and time `m`, we construct covers with entourage
`U ○ U` and any multiple `m * n` of `m` with controlled cardinality. This lemma is the first step
in a submultiplicative-like property of `coverMincard`, with consequences such as explicit bounds
for the topological entropy (`coverEntropyInfEntourage_le_card_div`) and an equality between
two notions of topological entropy (`coverEntropyInf_eq_coverEntropySup_of_inv`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant4b4d563406385770a3bb5cff283f96765aa69deabcd1fd46fefd00e8b1e7afd4.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834bf0bd416196ee5f7f4bfeeaaa8b6ee6ef3f58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
