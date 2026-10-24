# finsuppLeft_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d784ef53e40eaf2c815662da129d8211b010d212",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3de23f1-1aad-f982-92ed-b21035bf342d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4686bbd-caa3-0d22-0497-183a8f173c5c",
  "kind": "lemma",
  "lexical_name": "finsuppLeft_smul'",
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
  "slug": "finsuppleft-smul--f276abff13c7d689860f0e9c",
  "source": {
    "blob": "d784ef53e40eaf2c815662da129d8211b010d212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f276abff13c7d689860f0e9c153e64539d1109add2480d73bba3a5b252e87e49",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4686bbd-caa3-0d22-0497-183a8f173c5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finsuppLeft_smul' (s : S) (t : (ι →₀ M) ⊗[R] N) :
    finsuppLeft R S M N ι (s • t) = s • finsuppLeft R S M N ι t := by
  simp

variable (R M N ι) in
/-- The tensor product of `ι →₀ R` and `N` is linearly equivalent to `ι →₀ N` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variant80584f8d187e33c974cb336180e0805cbd5d9dc8d6670f309a05f9bcde1fa111.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d784ef53e40eaf2c815662da129d8211b010d212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
