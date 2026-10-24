# algebraMap_cartanMatrixIn_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "216d23ec407a06d44e597cc8e0c08c1cee767a9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f13e3cd1-7529-1477-0fda-c95e84856534",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7454b2c-01f7-6a01-0c76-abdf10e12250",
  "kind": "lemma",
  "lexical_name": "algebraMap_cartanMatrixIn_apply",
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
  "slug": "algebramap-cartanmatrixin-apply--ed12513115191ba051a8bd58",
  "source": {
    "blob": "216d23ec407a06d44e597cc8e0c08c1cee767a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed12513115191ba051a8bd58e6cf503caddaa3cf7085c12e70f9ad6d5a045022",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7454b2c-01f7-6a01-0c76-abdf10e12250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma algebraMap_cartanMatrixIn_apply (i j : b.support) :
    algebraMap S R (b.cartanMatrixIn S i j) = P.pairing i j := by
  simp [cartanMatrixIn_def]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant9573c225a5e410f373509ae4fb9fc99c1882498869b62f32b5c48c68d55f8eea.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `216d23ec407a06d44e597cc8e0c08c1cee767a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
