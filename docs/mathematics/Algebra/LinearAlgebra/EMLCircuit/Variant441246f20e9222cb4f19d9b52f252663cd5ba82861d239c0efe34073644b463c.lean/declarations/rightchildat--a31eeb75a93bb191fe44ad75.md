# rightChildAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5497bf0dc70a8745fa59cbb322285f3f6fb149d6cdf3d37cabd18c81cb8dca0f",
  "kind": "def",
  "lexical_name": "rightChildAt",
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
  "slug": "rightchildat--a31eeb75a93bb191fe44ad75",
  "source": {
    "blob": "8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 92,
    "path": "GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a31eeb75a93bb191fe44ad75fedc2ce44d01233ffd7509a02b80bc7040f6cf18",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5497bf0dc70a8745fa59cbb322285f3f6fb149d6cdf3d37cabd18c81cb8dca0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightChildAt : EMLTree k -> Nat -> Option Nat
  | .one, _ => none
  | .var _, _ => none
  | .eml left right, index =>
      if index < left.size then
        left.rightChildAt index
      else if index < left.size + right.size then
        (right.rightChildAt (index - left.size)).map (fun child => left.size + child)
      else if index = left.size + right.size then
        some (left.size + right.size - 1)
      else
        none

end EMLTree

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
