# hittingBtwn_apply_mono_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfe6c576b7e3b62fbec41ee5f773b8315602c982",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a67c381-0426-978f-4903-2d24ab382db0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:35f69bc5-6c95-80b5-6077-05c7421e6c2d",
  "kind": "lemma",
  "lexical_name": "hittingBtwn_apply_mono_right",
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
  "slug": "hittingbtwn-apply-mono-right--1f25ed25e00c3ce344dbed82",
  "source": {
    "blob": "dfe6c576b7e3b62fbec41ee5f773b8315602c982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 387,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f25ed25e00c3ce344dbed82046b640453b4847c74e6a8c66a962a702ef5ec1e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35f69bc5-6c95-80b5-6077-05c7421e6c2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hittingBtwn_apply_mono_right (u : ι → Ω → β) (s : Set β) (n : ι) (ω : Ω) :
    Monotone (hittingBtwn u s n · ω) := fun _ _ hnn' ↦ hittingBtwn_mono_right u s n hnn'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe6c576b7e3b62fbec41ee5f773b8315602c982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
