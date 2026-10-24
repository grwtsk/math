# IsPresentationCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60b7d59d586398a2d9b402ed4e151cb01e5a9e3b000b608575a6ff06892e13f2",
  "kind": "structure",
  "lexical_name": "IsPresentationCore",
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
  "slug": "ispresentationcore--3709e9abfc764c0b1366316e",
  "source": {
    "blob": "46647eafc3aa1008582e0d03a321d798d7816364",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 421,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3709e9abfc764c0b1366316e99492bc637b23ccf2bddbe6f9c973a7943e63cf0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60b7d59d586398a2d9b402ed4e151cb01e5a9e3b000b608575a6ff06892e13f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 421–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsPresentationCore (solution : relations.Solution M) where
  /-- any solution in a module `N : Type w'` is obtained in a unique way
  by postcomposing `solution : relations.Solution M` by a linear map `M →ₗ[A] N`. -/
  desc {N : Type w'} [AddCommGroup N] [Module A N] (s : relations.Solution N) : M →ₗ[A] N
  postcomp_desc {N : Type w'} [AddCommGroup N] [Module A N] (s : relations.Solution N) :
    solution.postcomp (desc s) = s
  postcomp_injective {N : Type w'} [AddCommGroup N] [Module A N] {f f' : M →ₗ[A] N}
      (h : solution.postcomp f = solution.postcomp f') : f = f'

namespace IsPresentationCore

variable {solution : relations.Solution M}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant200f05cd98c51ae4018170729077d1637eeb63837175aef45662c87bc8a26658.lean#L421).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46647eafc3aa1008582e0d03a321d798d7816364` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
