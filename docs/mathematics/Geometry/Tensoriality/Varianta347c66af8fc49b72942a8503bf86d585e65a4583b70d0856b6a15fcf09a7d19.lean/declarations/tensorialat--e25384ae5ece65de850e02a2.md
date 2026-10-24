# TensorialAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5bb1e9928c67c0a615bc869398c68de28575a5e7ad0eaa81a820bfe23984359",
  "kind": "structure",
  "lexical_name": "TensorialAt",
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
  "slug": "tensorialat--e25384ae5ece65de850e02a2",
  "source": {
    "blob": "2c1a66c91c2739590f453cf74833d44017923c59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e25384ae5ece65de850e02a2c373c80c92bd4c1e5cdab74cc888183a2737abe8",
  "verification": {
    "reference": "docs/verification/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5bb1e9928c67c0a615bc869398c68de28575a5e7ad0eaa81a820bfe23984359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TensorialAt (Φ : (Π x : M, V x) → A) (x : M) : Prop where
  smul : ∀ {f : M → 𝕜} {σ : Π x : M, V x}, MDiffAt f x → MDiffAt (T% σ) x → Φ (f • σ) = f x • Φ σ
  add : ∀ {σ σ'}, MDiffAt (T% σ) x → MDiffAt (T% σ') x → Φ (σ + σ') = Φ σ + Φ σ'

variable {Φ : (Π x : M, V x) → A} {x : M}
variable {I F F'}

namespace TensorialAt

/-- If the operation `Φ` on sections of a vector bundle `V` is tensorial at `x`, then it depends
only on the germ of the section at `x`.

This is later superseded by `TensorialAt.pointwise`, showing that `Φ` depends only on the value at
`x` itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Tensoriality/Varianta347c66af8fc49b72942a8503bf86d585e65a4583b70d0856b6a15fcf09a7d19.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c1a66c91c2739590f453cf74833d44017923c59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
