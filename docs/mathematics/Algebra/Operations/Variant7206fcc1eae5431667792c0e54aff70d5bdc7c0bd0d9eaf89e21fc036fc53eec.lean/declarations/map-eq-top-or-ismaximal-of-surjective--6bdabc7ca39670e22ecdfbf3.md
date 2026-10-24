# map_eq_top_or_isMaximal_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e5db6ce-0e69-5647-b1a1-249d437cecd7",
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
  "slug": "map-eq-top-or-ismaximal-of-surjective--6bdabc7ca39670e22ecdfbf3",
  "source": {
    "blob": "d93bb8daa13aa4395647185dd4aa01fbafca6654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1690,
    "line": 1681,
    "path": "GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bdabc7ca39670e22ecdfbf34679ee397bcbecc22cbd97b7d5a15de05d8b488e",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e5db6ce-0e69-5647-b1a1-249d437cecd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1681–1690.

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

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant7206fcc1eae5431667792c0e54aff70d5bdc7c0bd0d9eaf89e21fc036fc53eec.lean#L1681).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d93bb8daa13aa4395647185dd4aa01fbafca6654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
