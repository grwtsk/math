# intermediateFieldMap_apply_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f101ab8fece2d72d333829ede495a76ced96dd1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 474,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82a46885-f2df-6466-99fa-ff4a1363d43f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9092342a-d1ca-48b3-91b1-cc8cd4d4fba2",
  "kind": "theorem",
  "lexical_name": "intermediateFieldMap_apply_coe",
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
  "slug": "intermediatefieldmap-apply-coe--27c912593c6f741f62a38356",
  "source": {
    "blob": "f101ab8fece2d72d333829ede495a76ced96dd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 474,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27c912593c6f741f62a383564c4084622712a0bed280ede8a52894c7afc887af",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9092342a-d1ca-48b3-91b1-cc8cd4d4fba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 474–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intermediateFieldMap_apply_coe (e : L ≃ₐ[K] L') (E : IntermediateField K L) (a : E) :
    ↑(intermediateFieldMap e E a) = e a :=
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant278035fbabb1d2823072bca6363581530a58fa6b636e3d504114f29f3a7a5e56.lean#L474).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f101ab8fece2d72d333829ede495a76ced96dd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
