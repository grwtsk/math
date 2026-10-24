# map_eq_top_or_isMaximal_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1673,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27b7115f-2f8e-61e0-c77a-43def7affda6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:597e7dc1-9289-eaf7-bb86-d26fadb84c05",
  "kind": "theorem",
  "lexical_name": "map_eq_top_or_isMaximal_of_surjective",
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
  "slug": "map-eq-top-or-ismaximal-of-surjective--5ba4d45618b2446617bc535a",
  "source": {
    "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1682,
    "line": 1673,
    "path": "GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ba4d45618b2446617bc535af70c7b00ea308a030a33cc426d35aee99a0517f0",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:597e7dc1-9289-eaf7-bb86-d26fadb84c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1673–1682.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_eq_top_or_isMaximal_of_surjective {I : Ideal R} (H : IsMaximal I) :
    map f I = ⊤ ∨ IsMaximal (map f I) := by
  refine' or_iff_not_imp_left.2 fun ne_top => ⟨⟨fun h => ne_top h, fun J hJ => _⟩⟩
  · refine'
      (relIsoOfSurjective f hf).injective
        (Subtype.ext_iff.2 (Eq.trans (H.1.2 (comap f J) (lt_of_le_of_ne _ _)) comap_top.symm))
    · exact map_le_iff_le_comap.1 (le_of_lt hJ)
    · exact fun h => hJ.right (le_map_of_comap_le_of_surjective f hf (le_of_eq h.symm))
#align ideal.map_eq_top_or_is_maximal_of_surjective Ideal.map_eq_top_or_isMaximal_of_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean#L1673).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1abf4cea977f829dcc3f8678b8d3697e3d749b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
