# QuaternionAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8eb40bcd4570367b4f3da36a5cdc0ace715515618ab497ff34b9a8a84a000d1b",
  "kind": "structure",
  "lexical_name": "QuaternionAlgebra",
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
  "slug": "quaternionalgebra--be3ee00ba0699bd7922d3486",
  "source": {
    "blob": "726d65eff4a6f4e97c43cb23effec79d5434d5d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/Algebra/Quaternion/Variant65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be3ee00ba0699bd7922d3486e3696e686948690fcfb17c909f30b2ae62f26029",
  "verification": {
    "reference": "docs/verification/Algebra/Quaternion/Variant65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8eb40bcd4570367b4f3da36a5cdc0ace715515618ab497ff34b9a8a84a000d1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure QuaternionAlgebra (R : Type*) (a b : R) where
  /-- Real part of a quaternion. -/
  re : R
  imI : R
  imJ : R
  imK : R
#align quaternion_algebra QuaternionAlgebra
#align quaternion_algebra.re QuaternionAlgebra.re
#align quaternion_algebra.im_i QuaternionAlgebra.imI
#align quaternion_algebra.im_j QuaternionAlgebra.imJ
#align quaternion_algebra.im_k QuaternionAlgebra.imK

@[inherit_doc]
scoped[Quaternion] notation "ℍ[" R "," a "," b "]" => QuaternionAlgebra R a b
open Quaternion

namespace QuaternionAlgebra

/-- The equivalence between a quaternion algebra over `R` and `R × R × R × R`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Quaternion/Variant65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Quaternion/Variant65d60a0a470201f5e60e03c55287d60c3aa4be293eb2cace27edd09cfd64ab1e.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `726d65eff4a6f4e97c43cb23effec79d5434d5d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
