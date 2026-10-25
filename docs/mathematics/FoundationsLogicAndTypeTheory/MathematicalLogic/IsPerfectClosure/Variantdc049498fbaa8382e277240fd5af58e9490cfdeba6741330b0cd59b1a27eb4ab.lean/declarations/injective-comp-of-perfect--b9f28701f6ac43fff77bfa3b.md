# injective_comp_of_perfect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d30a9c4362575777d6abe34180d3505fb3f9b6cc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e38b36fb-900c-cd09-30fd-52cb0e99b844",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f58cbd54-e807-5494-c28e-0783db72812a",
  "kind": "theorem",
  "lexical_name": "injective_comp_of_perfect",
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
  "slug": "injective-comp-of-perfect--b9f28701f6ac43fff77bfa3b",
  "source": {
    "blob": "d30a9c4362575777d6abe34180d3505fb3f9b6cc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9f28701f6ac43fff77bfa3bded3e58578ce8c6073d7bee253bc094ecb1e444c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f58cbd54-e807-5494-c28e-0783db72812a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_comp_of_perfect [IsPRadical i p] [PerfectRing M p] :
    Function.Injective fun f : L →+* M ↦ f.comp i :=
  injective_comp_of_pNilradical_eq_bot i p (PerfectRing.pNilradical_eq_bot M p)

end IsPRadical

namespace PerfectRing

variable [ExpChar K p] [PerfectRing M p] [IsPRadical i p]

/-- If `i : K →+* L` and `j : K →+* M` are ring homomorphisms of characteristic `p` rings, such that
`i` is `p`-radical, and `M` is a perfect ring, then `PerfectRing.liftAux` is well-defined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/IsPerfectClosure/Variantdc049498fbaa8382e277240fd5af58e9490cfdeba6741330b0cd59b1a27eb4ab.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d30a9c4362575777d6abe34180d3505fb3f9b6cc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
