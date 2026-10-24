# Module.length_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd014c98-6d82-867b-d196-f975e0470921",
  "kind": "lemma",
  "lexical_name": "Module.length_pos",
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
  "slug": "module-length-pos--a00468f9e057213d9110ee79",
  "source": {
    "blob": "f205bbb307f205d0c688071d46cb98b311d999a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a00468f9e057213d9110ee7914d4c0da98c15dbef10fb7438583c49fc8b518b2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd014c98-6d82-867b-d196-f975e0470921`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.length_pos [Nontrivial M] : 0 < Module.length R M :=
  Module.length_pos_iff.mpr ‹_›

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Length/Variantccf61f1671fd4119b532ae468baf4a74207b5d6f1ec5acf3ee2a76edddc039b9.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f205bbb307f205d0c688071d46cb98b311d999a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
