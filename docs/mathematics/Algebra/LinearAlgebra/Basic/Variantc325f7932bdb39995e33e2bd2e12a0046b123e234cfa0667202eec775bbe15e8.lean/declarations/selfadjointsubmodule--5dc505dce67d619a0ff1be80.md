# selfAdjointSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64d92d63f58bf7b7dd3188fa031f0a63ecd2dbb7ba930ad3bc92a9c16b4a69ee",
  "kind": "def",
  "lexical_name": "selfAdjointSubmodule",
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
  "slug": "selfadjointsubmodule--5dc505dce67d619a0ff1be80",
  "source": {
    "blob": "b936a4c813ee9e5ce378488e6a7c539c4641b693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 509,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5dc505dce67d619a0ff1be80e2fcc427eab0e391ef78ff28b4e15c5a35f36645",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64d92d63f58bf7b7dd3188fa031f0a63ecd2dbb7ba930ad3bc92a9c16b4a69ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 509–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def selfAdjointSubmodule :=
  isPairSelfAdjointSubmodule B B

/-- The set of skew-adjoint endomorphisms of a module with bilinear map is a submodule. (In fact
it is a Lie subalgebra.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc325f7932bdb39995e33e2bd2e12a0046b123e234cfa0667202eec775bbe15e8.lean#L509).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b936a4c813ee9e5ce378488e6a7c539c4641b693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
