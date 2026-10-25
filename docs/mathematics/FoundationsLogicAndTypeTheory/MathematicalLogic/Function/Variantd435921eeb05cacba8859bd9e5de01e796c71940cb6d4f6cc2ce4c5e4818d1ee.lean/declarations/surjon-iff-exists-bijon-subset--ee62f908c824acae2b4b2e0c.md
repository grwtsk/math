# surjOn_iff_exists_bijOn_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11f066c5-5097-382b-0aac-8cfe334b76eb",
  "kind": "theorem",
  "lexical_name": "surjOn_iff_exists_bijOn_subset",
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
  "slug": "surjon-iff-exists-bijon-subset--ee62f908c824acae2b4b2e0c",
  "source": {
    "blob": "c7f4cd9d0bda8256f7177db8cbcd2fb5d666d167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1330,
    "line": 1320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee62f908c824acae2b4b2e0c21db2c0c6b6153f28d0284f53872b2d1504ed7a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11f066c5-5097-382b-0aac-8cfe334b76eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1320–1330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjOn_iff_exists_bijOn_subset : SurjOn f s t ↔ ∃ (s' : _) (_ : s' ⊆ s), BijOn f s' t := by
  constructor
  · rcases eq_empty_or_nonempty t with (rfl | ht)
    · exact fun _ => ⟨∅, empty_subset _, bijOn_empty f⟩
    · intro h
      haveI : Nonempty α := ⟨Classical.choose (h.comap_nonempty ht)⟩
      exact ⟨_, h.mapsTo_invFunOn.image_subset, h.bijOn_subset⟩
  · rintro ⟨s', hs', hfs'⟩
    exact hfs'.surjOn.mono hs' (Subset.refl _)
#align set.surj_on_iff_exists_bij_on_subset Set.surjOn_iff_exists_bijOn_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantd435921eeb05cacba8859bd9e5de01e796c71940cb6d4f6cc2ce4c5e4818d1ee.lean#L1320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f4cd9d0bda8256f7177db8cbcd2fb5d666d167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
