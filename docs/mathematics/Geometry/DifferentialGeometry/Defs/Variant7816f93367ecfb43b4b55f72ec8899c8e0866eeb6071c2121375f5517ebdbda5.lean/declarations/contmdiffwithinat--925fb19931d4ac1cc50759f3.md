# ContMDiffWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f104944413914b0a0faf34c338359f5ea92270dc699d386eadfb2fcc4bdce2d7",
  "kind": "def",
  "lexical_name": "ContMDiffWithinAt",
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
  "slug": "contmdiffwithinat--925fb19931d4ac1cc50759f3",
  "source": {
    "blob": "79418ade9f2f078695d8ba3a08f730495bfffb41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 170,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:925fb19931d4ac1cc50759f307c58e4103b5c85114eff102470ab72c566253ef",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f104944413914b0a0faf34c338359f5ea92270dc699d386eadfb2fcc4bdce2d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContMDiffWithinAt (n : ℕ∞ω) (f : M → M') (s : Set M) (x : M) :=
  LiftPropWithinAt (ContDiffWithinAtProp I I' n) f s x

variable (I I') in
/-- `ContMDiffAt I I' n f x` indicates that the function `f : M → M'` between manifolds
is `n` times continuously differentiable at `x : M`.

`f` is `n` times continuously differentiable at `x` if it is continuous and it is `n` times
continuously differentiable around `x`, when read in the preferred chart at `x`.
The parameter `n` belongs to `ℕ∞ω` (accessible in the `ContDiff` scope), i.e. it can be a natural
number, `∞`, or `ω`, where `C^ω` corresponds to analytic functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant7816f93367ecfb43b4b55f72ec8899c8e0866eeb6071c2121375f5517ebdbda5.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79418ade9f2f078695d8ba3a08f730495bfffb41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
