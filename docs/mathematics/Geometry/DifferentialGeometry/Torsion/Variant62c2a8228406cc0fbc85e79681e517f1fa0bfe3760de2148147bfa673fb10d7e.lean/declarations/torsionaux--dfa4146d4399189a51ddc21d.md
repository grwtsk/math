# torsionAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5806232c6463cfa0abbc9f7c745ee4709154f6537dcd0b530811bb2332efb02a",
  "kind": "def",
  "lexical_name": "torsionAux",
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
  "slug": "torsionaux--dfa4146d4399189a51ddc21d",
  "source": {
    "blob": "a41b95c1980e08206bddbb78df63279869fcbcdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 43,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dfa4146d4399189a51ddc21d8d9ecb9a9694ea21b47197fb427eb8877fbb55c9",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5806232c6463cfa0abbc9f7c745ee4709154f6537dcd0b530811bb2332efb02a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def torsionAux
    (cov : (Π x : M, TangentSpace I x) → (Π x : M, TangentSpace I x →L[𝕜] TangentSpace I x)) :
    (Π x : M, TangentSpace I x) → (Π x : M, TangentSpace I x) → (Π x : M, TangentSpace I x) :=
  fun X Y x ↦ cov Y x (X x) - cov X x (Y x) - VectorField.mlieBracket I X Y x

variable [IsManifold I 2 M] [CompleteSpace E]
  {cov : (Π x : M, TangentSpace I x) → (Π x : M, TangentSpace I x →L[𝕜] TangentSpace I x)}
  {X Y : Π x : M, TangentSpace I x}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Torsion/Variant62c2a8228406cc0fbc85e79681e517f1fa0bfe3760de2148147bfa673fb10d7e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a41b95c1980e08206bddbb78df63279869fcbcdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
