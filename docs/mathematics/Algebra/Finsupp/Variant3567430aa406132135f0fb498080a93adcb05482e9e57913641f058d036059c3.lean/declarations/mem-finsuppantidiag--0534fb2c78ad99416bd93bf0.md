# mem_finsuppAntidiag'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "420f3916934a794eca80153a71e9e04de39df809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:868bf5bd-343b-4776-92e2-5c007ad1e0f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d632b20-5180-e1dd-2a65-31baa87432ab",
  "kind": "lemma",
  "lexical_name": "mem_finsuppAntidiag'",
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
  "slug": "mem-finsuppantidiag--0534fb2c78ad99416bd93bf0",
  "source": {
    "blob": "420f3916934a794eca80153a71e9e04de39df809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 52,
    "path": "GRWTSK/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0534fb2c78ad99416bd93bf0c170eac85a16c8f03ce278d769a4525b26f73f50",
  "verification": {
    "reference": "docs/verification/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d632b20-5180-e1dd-2a65-31baa87432ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_finsuppAntidiag' :
    f ∈ finsuppAntidiag s n ↔ f.sum (fun _ x ↦ x) = n ∧ f.support ⊆ s := by
  simp only [mem_finsuppAntidiag, and_congr_left_iff]
  rintro hf
  rw [sum_of_support_subset (N := μ) f hf (fun _ x ↦ x) fun _ _ ↦ rfl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finsupp/Variant3567430aa406132135f0fb498080a93adcb05482e9e57913641f058d036059c3.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420f3916934a794eca80153a71e9e04de39df809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
