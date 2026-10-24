# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cdf495dfc3a27dcd635c2f36f2423b85d2a77f0a6f91677426cf4932e3b9c26",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c8ea8b5be0437b2621435bdc",
  "source": {
    "blob": "2a893c91bfbb7c59ef99ef3025a6d8d885ae31ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 469,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8ea8b5be0437b2621435bdc6e44fafdcec8d7a5fb76dc2b7fad68fb3166dc10",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cdf495dfc3a27dcd635c2f36f2423b85d2a77f0a6f91677426cf4932e3b9c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) FaithfulSMul.to_isTorsionFree [Nontrivial R] [IsCancelMulZero A] :
    IsTorsionFree R A := .trans_faithfulSMul R A A

end FaithfulSMul

namespace Module
variable {R A : Type*} [CommRing R] [Ring A] [Algebra R A]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant851902371aa2dc7f9ee1f3041a6d1f4abe1e174164abcf55c59c266f52aaf031.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a893c91bfbb7c59ef99ef3025a6d8d885ae31ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
