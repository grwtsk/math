# isNormal_enum_iff_dirSupClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c28b69b7-714e-48f5-fd5c-9246999e6644",
  "kind": "theorem",
  "lexical_name": "isNormal_enum_iff_dirSupClosed",
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
  "slug": "isnormal-enum-iff-dirsupclosed--f36e38352b15c23b62a4d0c5",
  "source": {
    "blob": "b3af06e93d17884d3bd0b3605a07da4c8e257ff2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f36e38352b15c23b62a4d0c56b5d4bd52b8e8eed8dfc55888490ddce13297a6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c28b69b7-714e-48f5-fd5c-9246999e6644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNormal_enum_iff_dirSupClosed :
    IsNormal (Subtype.val ∘ enum s hs) ↔ DirSupClosed s := by
  let H := (Subtype.strictMono_coe _).comp (enum s hs).strictMono
  refine ⟨fun he ↦ by simpa using he.dirSupClosed_range, ?_⟩
  rw [isNormal_iff, dirSupClosed_iff_of_linearOrder]
  refine fun hs' ↦ ⟨H, fun a ha b hb ↦ ?_⟩
  have bdd : BddAbove (Subtype.val ∘ enum s hs '' Iio a) := by
    use enum s hs a
    simpa [upperBounds] using fun x hx ↦ hx.le
  have : Nonempty α := ⟨a⟩
  let := WellFoundedLT.toOrderBot α
  let := WellFoundedLT.conditionallyCompleteLinearOrderBot α
  trans sSup ((Subtype.val ∘ enum s hs) '' Iio a)
  · refine enum_le_of_forall_lt (hs' ?_ ?_ (isLUB_csSup' bdd)) fun b hb ↦ ?_
    · grind
    · simpa using ha.ne_bot
    · obtain ⟨c, hbc, hca⟩ := ha.lt_iff_nonempty_Ioo.1 hb
      refine (H hbc).trans_le <| le_csSup bdd ⟨c, ?_⟩
      simpa
  · apply csSup_le'
    simpa [upperBounds]

end Order
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Enum/Variant4be54af02e43abc4add1411c683b3219730561f3a8646c2bf994737eb7de2f72.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3af06e93d17884d3bd0b3605a07da4c8e257ff2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
