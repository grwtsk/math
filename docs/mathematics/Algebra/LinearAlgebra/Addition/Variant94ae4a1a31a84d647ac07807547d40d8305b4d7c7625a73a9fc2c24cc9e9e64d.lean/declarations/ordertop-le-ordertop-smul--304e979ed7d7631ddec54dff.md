# orderTop_le_orderTop_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8381abf4fcd3de81e54a8537ff20e7cc2d0b325",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f527d3dc-c25c-680f-634c-4d8d014fc911",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab4b7c8d-d2aa-ac52-323c-f4b26a50a435",
  "kind": "theorem",
  "lexical_name": "orderTop_le_orderTop_smul",
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
  "slug": "ordertop-le-ordertop-smul--304e979ed7d7631ddec54dff",
  "source": {
    "blob": "e8381abf4fcd3de81e54a8537ff20e7cc2d0b325",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:304e979ed7d7631ddec54dffec31ef03399893d80b0f209ccbcde0c92a00638f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab4b7c8d-d2aa-ac52-323c-f4b26a50a435`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderTop_le_orderTop_smul {Γ} [LinearOrder Γ] (r : R) (x : V⟦Γ⟧) :
    x.orderTop ≤ (r • x).orderTop :=
  le_of_not_gt <| orderTop_smul_not_lt r x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Addition/Variant94ae4a1a31a84d647ac07807547d40d8305b4d7c7625a73a9fc2c24cc9e9e64d.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8381abf4fcd3de81e54a8537ff20e7cc2d0b325` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
