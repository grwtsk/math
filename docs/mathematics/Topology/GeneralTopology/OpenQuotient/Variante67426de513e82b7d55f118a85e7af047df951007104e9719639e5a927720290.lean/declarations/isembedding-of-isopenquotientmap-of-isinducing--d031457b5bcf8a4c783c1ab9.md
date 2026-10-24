# isEmbedding_of_isOpenQuotientMap_of_isInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a61de6f4-f52c-d255-1f05-8b41e540e6a3",
  "kind": "lemma",
  "lexical_name": "isEmbedding_of_isOpenQuotientMap_of_isInducing",
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
  "slug": "isembedding-of-isopenquotientmap-of-isinducing--d031457b5bcf8a4c783c1ab9",
  "source": {
    "blob": "269521cb7bcc7b11fb63c8eb467290b808a3cd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 132,
    "path": "GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d031457b5bcf8a4c783c1ab97a2a556c7a489061a6d1846fbf5b2920b6983605",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a61de6f4-f52c-d255-1f05-8b41e540e6a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEmbedding_of_isOpenQuotientMap_of_isInducing
    (h : g ∘ p = q ∘ f)
    (hf : IsInducing f) (hp : IsQuotientMap p)
    (hq : IsOpenQuotientMap q) (hg : Function.Injective g)
    (H : q ⁻¹' (q '' (Set.range f)) ⊆ Set.range f) :
    IsEmbedding g :=
  ⟨⟨hp.eq_coinduced.trans (coinduced_eq_induced_of_isOpenQuotientMap_of_isInducing
    f g p q h hf hp.surjective hq hg H)⟩, hg⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenQuotient/Variante67426de513e82b7d55f118a85e7af047df951007104e9719639e5a927720290.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `269521cb7bcc7b11fb63c8eb467290b808a3cd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
