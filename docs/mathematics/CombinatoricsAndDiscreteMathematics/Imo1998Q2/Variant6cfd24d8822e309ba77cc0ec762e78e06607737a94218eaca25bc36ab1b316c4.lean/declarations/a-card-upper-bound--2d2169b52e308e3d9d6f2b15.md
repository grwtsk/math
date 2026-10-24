# A_card_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d45da58f9af0f2d3b54071ef8ffa6b956253942",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0405eed-be4f-fa6f-e7e8-0bdff6124f29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32d23627-ed30-9d04-8d41-eb415e8a2817",
  "kind": "theorem",
  "lexical_name": "A_card_upper_bound",
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
  "slug": "a-card-upper-bound--2d2169b52e308e3d9d6f2b15",
  "source": {
    "blob": "2d45da58f9af0f2d3b54071ef8ffa6b956253942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d2169b52e308e3d9d6f2b15489bad1c71820b776a0ff12a3ee61d483ed619ef",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32d23627-ed30-9d04-8d41-eb415e8a2817`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem A_card_upper_bound {k : ℕ}
    (hk : ∀ p : JudgePair J, p.Distinct → (agreedContestants r p).card ≤ k) :
    (A r).card ≤ k * (Fintype.card J * Fintype.card J - Fintype.card J) := by
  change _ ≤ k * (Finset.card _ * Finset.card _ - Finset.card _)
  rw [← Finset.offDiag_card]
  apply Finset.card_le_mul_card_image_of_maps_to (A_maps_to_offDiag_judgePair r)
  intro p hp
  have hp' : p.Distinct := by simp [Finset.mem_offDiag] at hp; exact hp
  rw [← A_fibre_over_judgePair_card r hp']; apply hk; exact hp'
#align imo1998_q2.A_card_upper_bound Imo1998Q2.A_card_upper_bound

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d45da58f9af0f2d3b54071ef8ffa6b956253942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
