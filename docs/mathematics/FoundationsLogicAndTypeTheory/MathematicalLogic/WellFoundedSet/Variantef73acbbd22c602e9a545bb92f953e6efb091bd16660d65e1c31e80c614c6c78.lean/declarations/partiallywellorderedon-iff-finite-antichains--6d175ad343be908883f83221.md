# partiallyWellOrderedOn_iff_finite_antichains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a57dcb5-6c21-fdee-c447-929ec059ef83",
  "kind": "theorem",
  "lexical_name": "partiallyWellOrderedOn_iff_finite_antichains",
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
  "slug": "partiallywellorderedon-iff-finite-antichains--6d175ad343be908883f83221",
  "source": {
    "blob": "0116f8929ab8b26e62eb1cac7f5987f3f8cf0f8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 349,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d175ad343be908883f832212e6039acb3b744583c7c962c1408cb61d35fd98e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a57dcb5-6c21-fdee-c447-929ec059ef83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partiallyWellOrderedOn_iff_finite_antichains [Std.Symm r] :
    s.PartiallyWellOrderedOn r ↔ ∀ t, t ⊆ s → IsAntichain r t → t.Finite := by
  refine ⟨fun h t ht hrt => hrt.finite_of_partiallyWellOrderedOn (h.mono ht), ?_⟩
  rw [partiallyWellOrderedOn_iff_exists_lt]
  intro hs f hf
  by_contra! H
  refine infinite_range_of_injective (fun m n hmn => ?_) (hs _ (range_subset_iff.2 hf) ?_)
  · obtain h | h | h := lt_trichotomy m n
    · refine (H _ _ h ?_).elim
      rw [hmn]
      exact refl _
    · exact h
    · refine (H _ _ h ?_).elim
      rw [hmn]
      exact refl _
  rintro _ ⟨m, hm, rfl⟩ _ ⟨n, hn, rfl⟩ hmn
  obtain h | h := (ne_of_apply_ne _ hmn).lt_or_gt
  · exact H _ _ h
  · exact mt symm (H _ _ h)

end Refl

section IsPreorder
variable [IsPreorder α r]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/WellFoundedSet/Variantef73acbbd22c602e9a545bb92f953e6efb091bd16660d65e1c31e80c614c6c78.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0116f8929ab8b26e62eb1cac7f5987f3f8cf0f8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
