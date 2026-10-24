# isClique_map_finset_iff_of_nontrivial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9a2600d-2e12-e8cd-9913-3e590e612ee2",
  "kind": "theorem",
  "lexical_name": "isClique_map_finset_iff_of_nontrivial",
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
  "slug": "isclique-map-finset-iff-of-nontrivial--11924dda8a23ea8dc4e5b78a",
  "source": {
    "blob": "5dc19580174aabe33fed24944c87b5ccf551fa74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11924dda8a23ea8dc4e5b78a7446201c1bef6abf43fb7e2309893c50c6b0edc9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9a2600d-2e12-e8cd-9913-3e590e612ee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClique_map_finset_iff_of_nontrivial (ht : t.Nontrivial) :
    (G.map f).IsClique t ↔ ∃ (s : Finset α), G.IsClique s ∧ s.map f = t := by
  constructor
  · rw [isClique_map_iff_of_nontrivial (by simpa)]
    rintro ⟨s, hs, hst⟩
    obtain ⟨s, rfl⟩ := Set.Finite.exists_finset_coe <|
      (show s.Finite from Set.Finite.of_finite_image (by simp [hst]) f.injective.injOn)
    exact ⟨s,hs, Finset.coe_inj.1 (by simpa)⟩
  rintro ⟨s, hs, rfl⟩
  simpa using hs.map (f := f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Clique/Variant07172a59907e9145227e82435beb3cb55477263afe721c66a223d08a05ab31b1.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dc19580174aabe33fed24944c87b5ccf551fa74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
