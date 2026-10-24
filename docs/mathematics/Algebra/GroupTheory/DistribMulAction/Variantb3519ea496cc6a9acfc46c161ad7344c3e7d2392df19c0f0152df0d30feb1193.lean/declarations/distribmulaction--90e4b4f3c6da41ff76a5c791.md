# distribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35768ab5925a9f17a2fda40d66136ad04fb62a8bc47fe53cfb0ae94df8de2551",
  "kind": "instance",
  "lexical_name": "distribMulAction",
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
  "slug": "distribmulaction--90e4b4f3c6da41ff76a5c791",
  "source": {
    "blob": "3d556ddd95a38f19de6e444984de18c09583cde1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 26,
    "path": "GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90e4b4f3c6da41ff76a5c79138ae0481f57984cee8ebf29fcdb58ca665dd26cf",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35768ab5925a9f17a2fda40d66136ad04fb62a8bc47fe53cfb0ae94df8de2551`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance distribMulAction [AddMonoid α] [DistribMulAction M α] (S : Submonoid M) :
    DistribMulAction S α :=
  inferInstance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/DistribMulAction/Variantb3519ea496cc6a9acfc46c161ad7344c3e7d2392df19c0f0152df0d30feb1193.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d556ddd95a38f19de6e444984de18c09583cde1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
