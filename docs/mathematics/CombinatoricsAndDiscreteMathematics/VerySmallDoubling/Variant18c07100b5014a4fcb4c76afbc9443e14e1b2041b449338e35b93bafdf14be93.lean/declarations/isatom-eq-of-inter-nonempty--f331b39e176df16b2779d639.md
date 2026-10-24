# IsAtom.eq_of_inter_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfee5e60c4ed2b6d48d387e14fa653d8c761a277",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02ba3d98-5f3d-8e48-f702-7d257890a85c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b321eaba-16a1-e3fc-8f79-fbc155e84e8b",
  "kind": "lemma",
  "lexical_name": "IsAtom.eq_of_inter_nonempty",
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
  "slug": "isatom-eq-of-inter-nonempty--f331b39e176df16b2779d639",
  "source": {
    "blob": "cfee5e60c4ed2b6d48d387e14fa653d8c761a277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 601,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f331b39e176df16b2779d639249433bc83e44f9a62bd2f449217104faeb1bf9f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b321eaba-16a1-e3fc-8f79-fbc155e84e8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma IsAtom.eq_of_inter_nonempty (hK : K ≤ 1) (hS : S.Nonempty)
    (hA : IsAtom K S A) (hB : IsAtom K S B) (hAB : (A ∩ B).Nonempty) : A = B := by
  replace hAB := hA.isFragment.inter hK hS hB.isFragment hAB
  replace hA := hA.2 hAB <| by grw [inter_subset_left]
  replace hB := hB.2 hAB <| by grw [inter_subset_right]
  replace hA := eq_of_subset_of_card_le inter_subset_left hA
  replace hB := eq_of_subset_of_card_le inter_subset_right hB
  exact hA.symm.trans hB

set_option linter.style.whitespace false in -- manual alignment is not recognised
/-- For `K < 1` and `S ⊆ G` finite and nonempty, the value of connectivity is attained by a
nonempty finite subset of `G`. That is, a fragment for given `K` and `S` exists. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfee5e60c4ed2b6d48d387e14fa653d8c761a277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
