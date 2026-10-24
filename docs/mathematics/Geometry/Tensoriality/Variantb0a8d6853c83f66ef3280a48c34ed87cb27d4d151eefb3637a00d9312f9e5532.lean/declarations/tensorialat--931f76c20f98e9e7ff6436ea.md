# TensorialAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b289a1030da69226c38483434b6f1c6e3dcabc6530b49fcaf3e3dd550322518d",
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
  "slug": "tensorialat--931f76c20f98e9e7ff6436ea",
  "source": {
    "blob": "a494d4bef9dae920d6bac00f9b790c3d6168efcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:931f76c20f98e9e7ff6436ea6ffa6599fb69bb1daa23e5f3df95b299c1890e9e",
  "verification": {
    "reference": "docs/verification/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b289a1030da69226c38483434b6f1c6e3dcabc6530b49fcaf3e3dd550322518d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

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

[Verification target and public status](../../../../../verification/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/Tensoriality/Variantb0a8d6853c83f66ef3280a48c34ed87cb27d4d151eefb3637a00d9312f9e5532.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a494d4bef9dae920d6bac00f9b790c3d6168efcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
