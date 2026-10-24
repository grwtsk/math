# of_continuous_injective_isClosedMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "363703f1c317ab357689082bc3ba98132f3f1cfa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 849,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93eadf18-4e23-afb2-37df-2a8648f0b022",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae360cec-6fe1-1c85-925c-78a4a76c8aa0",
  "kind": "lemma",
  "lexical_name": "of_continuous_injective_isClosedMap",
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
  "slug": "of-continuous-injective-isclosedmap--d596c1d710cf246e6dbb4fb1",
  "source": {
    "blob": "363703f1c317ab357689082bc3ba98132f3f1cfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 849,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d596c1d710cf246e6dbb4fb1dae643b93fd43ae7a8bc23ac7cb7675ff47d539f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae360cec-6fe1-1c85-925c-78a4a76c8aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 849–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_continuous_injective_isClosedMap (h₁ : Continuous f) (h₂ : Injective f)
    (h₃ : IsClosedMap f) : IsClosedEmbedding f := by
  refine .of_isEmbedding_isClosedMap ⟨⟨?_⟩, h₂⟩ h₃
  refine h₁.le_induced.antisymm fun s hs => ?_
  refine ⟨(f '' sᶜ)ᶜ, (h₃ _ hs.isClosed_compl).isOpen_compl, ?_⟩
  rw [preimage_compl, preimage_image_eq _ h₂, compl_compl]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0c4e33b547a79340a7963b1f9490d8584679f44fa2f0efdfac376a1a8b196518.lean#L849).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `363703f1c317ab357689082bc3ba98132f3f1cfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
