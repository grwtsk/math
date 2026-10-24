# total_id_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72ab6dab-e95d-bfa3-60bd-0556a134e826",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ea2c073-087a-5bb3-b0cf-34c5fe65fcba",
  "kind": "theorem",
  "lexical_name": "total_id_surjective",
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
  "slug": "total-id-surjective--1c5e9a2295a2b0b27e773865",
  "source": {
    "blob": "88ea665c3d1888d240ef7c2990991809bc44f9fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 605,
    "line": 601,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c5e9a2295a2b0b27e773865e11473ae6efef4ae2b27e7dbca178af01a4bedcb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea2c073-087a-5bb3-b0cf-34c5fe65fcba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–605.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem total_id_surjective (M) [AddCommMonoid M] [Module R M] :
    Function.Surjective (Finsupp.total M M R _root_.id) :=
  total_surjective R Function.surjective_id
#align finsupp.total_id_surjective Finsupp.total_id_surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant3f603c4985ed71d6da020bf979abc0efcac0d0b6ddcdcb9554ea52f77c957697.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ea665c3d1888d240ef7c2990991809bc44f9fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
