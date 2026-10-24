# embed_comp_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46c2c03e-f8b9-5a00-2a56-9b2142c4b95e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f4379c0c-20d8-d64e-dc63-b2be419531f7",
  "kind": "theorem",
  "lexical_name": "embed_comp_lift",
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
  "slug": "embed-comp-lift--d33a2ff4b5050865a009fbe7",
  "source": {
    "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 377,
    "path": "GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d33a2ff4b5050865a009fbe7896882c492a1158df18e52c42023389171236a6f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4379c0c-20d8-d64e-dc63-b2be419531f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embed_comp_lift : (lift hI g hg).toLinearMap.comp (embed R M) = g := by
  ext; simp

end UniversalProperty

section Functoriality

section Map

variable {S : Type*} [CommSemiring S] {N : Type*} [AddCommMonoid N] [Module R N] [Module S N]
  (f : M →ₗ[R] N)

namespace LinearMap

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bf2f741f7fb940393f9648a2583df3098081a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
