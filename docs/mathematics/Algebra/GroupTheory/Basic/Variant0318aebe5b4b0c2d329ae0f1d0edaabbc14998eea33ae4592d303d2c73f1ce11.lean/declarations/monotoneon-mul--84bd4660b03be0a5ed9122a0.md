# MonotoneOn.mul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cc7f8d791e7605bce3f5f4e30072315afc1dbda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 945,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4e60024-ee53-0afe-336b-b966a3d59625",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42e75741-84d8-530d-0080-ecb847e4bdd1",
  "kind": "theorem",
  "lexical_name": "MonotoneOn.mul'",
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
  "slug": "monotoneon-mul--84bd4660b03be0a5ed9122a0",
  "source": {
    "blob": "1cc7f8d791e7605bce3f5f4e30072315afc1dbda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 951,
    "line": 945,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84bd4660b03be0a5ed9122a03846373bebea8aa40b78d621b2c3a93562440fcc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42e75741-84d8-530d-0080-ecb847e4bdd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 945–951.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonotoneOn.mul' [MulLeftMono α]
    [MulRightMono α] (hf : MonotoneOn f s) (hg : MonotoneOn g s) :
    MonotoneOn (fun x => f x * g x) s := fun _ hx _ hy h =>
  mul_le_mul' (hf hx hy h) (hg hx hy h)

/-- The product of two antitone functions is antitone. -/
@[to_additive add /-- The sum of two antitone functions is antitone. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant0318aebe5b4b0c2d329ae0f1d0edaabbc14998eea33ae4592d303d2c73f1ce11.lean#L945).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc7f8d791e7605bce3f5f4e30072315afc1dbda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
