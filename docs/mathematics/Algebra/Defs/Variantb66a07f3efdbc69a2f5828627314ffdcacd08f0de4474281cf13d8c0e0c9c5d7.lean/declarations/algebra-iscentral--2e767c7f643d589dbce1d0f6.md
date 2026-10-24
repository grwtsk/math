# Algebra.IsCentral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2de103f97bff3620cda24d84a304cacd22b61988c9396bfa649eb20250bc97c",
  "kind": "class",
  "lexical_name": "Algebra.IsCentral",
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
  "slug": "algebra-iscentral--2e767c7f643d589dbce1d0f6",
  "source": {
    "blob": "66928f6717c2900d7f60a2189f1870179f92dad8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 72,
    "path": "GRWTSK/Algebra/Defs/Variantb66a07f3efdbc69a2f5828627314ffdcacd08f0de4474281cf13d8c0e0c9c5d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e767c7f643d589dbce1d0f6cba0661808527b553ab08af28c7554139ee1b281",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantb66a07f3efdbc69a2f5828627314ffdcacd08f0de4474281cf13d8c0e0c9c5d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2de103f97bff3620cda24d84a304cacd22b61988c9396bfa649eb20250bc97c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Algebra.IsCentral
    (K : Type u) [CommSemiring K] (D : Type v) [Semiring D] [Algebra K D] : Prop where
  out : Subalgebra.center K D ≤ ⊥
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantb66a07f3efdbc69a2f5828627314ffdcacd08f0de4474281cf13d8c0e0c9c5d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantb66a07f3efdbc69a2f5828627314ffdcacd08f0de4474281cf13d8c0e0c9c5d7.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66928f6717c2900d7f60a2189f1870179f92dad8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
