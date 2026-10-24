# antivary_iff_exists_antitone_monotone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59c073926d3f1aefd13354af2bf5eb4d4bb4f7d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5afb8b9a-10cf-0723-0572-0a4012340a20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75d79996-da1f-01f9-3f73-be49a6976836",
  "kind": "lemma",
  "lexical_name": "antivary_iff_exists_antitone_monotone",
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
  "slug": "antivary-iff-exists-antitone-monotone--45d46e515deb074924e7af75",
  "source": {
    "blob": "59c073926d3f1aefd13354af2bf5eb4d4bb4f7d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45d46e515deb074924e7af75189dd26479e99a5c52f58ccedfb2cd5af8341b57",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75d79996-da1f-01f9-3f73-be49a6976836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma antivary_iff_exists_antitone_monotone :
    Antivary f g ↔ ∃ (_ : LinearOrder ι), Antitone f ∧ Monotone g := by
  simp [← antivaryOn_univ, antivaryOn_iff_exists_antitoneOn_monotoneOn]

alias ⟨MonovaryOn.exists_monotoneOn, _⟩ := monovaryOn_iff_exists_monotoneOn
alias ⟨MonovaryOn.exists_antitoneOn, _⟩ := monovaryOn_iff_exists_antitoneOn
alias ⟨AntivaryOn.exists_monotoneOn_antitoneOn, _⟩ := antivaryOn_iff_exists_monotoneOn_antitoneOn
alias ⟨AntivaryOn.exists_antitoneOn_monotoneOn, _⟩ := antivaryOn_iff_exists_antitoneOn_monotoneOn
alias ⟨Monovary.exists_monotone, _⟩ := monovary_iff_exists_monotone
alias ⟨Monovary.exists_antitone, _⟩ := monovary_iff_exists_antitone
alias ⟨Antivary.exists_monotone_antitone, _⟩ := antivary_iff_exists_monotone_antitone
alias ⟨Antivary.exists_antitone_monotone, _⟩ := antivary_iff_exists_antitone_monotone

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MonovaryOrder/Variant0dc300f44e4f6ccd0e648b42b735ab4eadcc52e492c8b2a672afe7cd3a585731.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c073926d3f1aefd13354af2bf5eb4d4bb4f7d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
