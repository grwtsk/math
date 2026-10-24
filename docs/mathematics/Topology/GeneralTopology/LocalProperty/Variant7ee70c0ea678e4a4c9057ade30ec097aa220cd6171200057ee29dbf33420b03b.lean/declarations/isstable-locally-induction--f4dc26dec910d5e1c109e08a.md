# IsStable.locally_induction₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb611bf1-18de-975f-ef5f-72dcd671ef75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bc71352-1c2b-7d75-0b5e-bafb91784bbe",
  "kind": "lemma",
  "lexical_name": "IsStable.locally_induction₂",
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
  "slug": "isstable-locally-induction--f4dc26dec910d5e1c109e08a",
  "source": {
    "blob": "e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 332,
    "path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4dc26dec910d5e1c109e08aabcf31cbd9a2f327ad609b6dc67d788801719976",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc71352-1c2b-7d75-0b5e-bafb91784bbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStable.locally_induction₂ {r : (ι → Ω → E) → Prop} [IsRightContinuous 𝓕]
    (hrpq : ∀ Y, r Y → p Y → Locally q 𝓕 Y P)
    (hr : IsStable 𝓕 r) (hp : IsStable 𝓕 p) (hq : IsStable 𝓕 q)
    (hrX : Locally r 𝓕 X P) (hpX : Locally p 𝓕 X P) :
    Locally q 𝓕 X P :=
  hq.locally_induction (p := fun Y ↦ r Y ∧ p Y) (and_imp.2 <| hrpq ·) <|
    (hr.locally_and_iff hp).2 ⟨hrX, hpX⟩

end

end ConditionallyCompleteLinearOrderBot

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
