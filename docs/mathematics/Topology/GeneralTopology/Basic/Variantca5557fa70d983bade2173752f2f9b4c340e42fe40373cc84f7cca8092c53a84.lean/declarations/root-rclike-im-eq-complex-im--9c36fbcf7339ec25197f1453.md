# _root_.RCLike.im_eq_complex_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fccd5f40dbd697fbe6637e90bd1b12dd9eb2c29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 321,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0be6fc02-94cb-a7e5-8684-dd70300b6e5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddfc0ffd-f483-98b4-62a5-ae004df15650",
  "kind": "theorem",
  "lexical_name": "_root_.RCLike.im_eq_complex_im",
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
  "slug": "root-rclike-im-eq-complex-im--9c36fbcf7339ec25197f1453",
  "source": {
    "blob": "7fccd5f40dbd697fbe6637e90bd1b12dd9eb2c29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 321,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c36fbcf7339ec25197f14536460c6ab271ad1db8b65e70be377d26510cd9db0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddfc0ffd-f483-98b4-62a5-ae004df15650`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 321–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.RCLike.im_eq_complex_im : ⇑(RCLike.im : ℂ →+ ℝ) = Complex.im :=
  rfl

-- TODO: Replace `mul_conj` and `conj_mul` once `norm` has replaced `abs`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean#L321).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fccd5f40dbd697fbe6637e90bd1b12dd9eb2c29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
