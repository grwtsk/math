# natCast_kronecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9442cbc727c333a0f299599ed667311f08681e41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4dfe7cbe-d34b-8a54-c2b3-fcfd507a34f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8a771a47-9921-0195-0c2b-ff2407e591ca",
  "kind": "theorem",
  "lexical_name": "natCast_kronecker",
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
  "slug": "natcast-kronecker--ac044a23d90ca1249d53c7af",
  "source": {
    "blob": "9442cbc727c333a0f299599ed667311f08681e41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 349,
    "path": "GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac044a23d90ca1249d53c7afe0daa76f84b1ee2c57e00ca88ec65d661c59d9b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a771a47-9921-0195-0c2b-ff2407e591ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_kronecker [NonAssocSemiring α] [DecidableEq l] (a : ℕ) (B : Matrix m n α) :
    (a : Matrix l l α) ⊗ₖ B =
      Matrix.reindex (Equiv.prodComm _ _) (Equiv.prodComm _ _) (blockDiagonal fun _ => a • B) :=
  diagonal_kronecker _ _ |>.trans <| by
    congr! 2
    ext
    simp [(Nat.cast_commute a _).eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Kronecker/Variantd28a247b628d8fc034d726260b171fbab3179ac44c627c30f60272df617c64c9.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9442cbc727c333a0f299599ed667311f08681e41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
