# Continuous.matrix_vecMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:187a8506-cabb-6ad2-bd95-f6724c50ef6c",
  "kind": "theorem",
  "lexical_name": "Continuous.matrix_vecMul",
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
  "slug": "continuous-matrix-vecmul--0774c6947f173e9d5638dbda",
  "source": {
    "blob": "bf6bf54b135c2961ec756ff62b968dc48a6dd2dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 161,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variant31e8d1e07def2e93c062fdbd238319d1c1e9301129068af5b0b9b2bd337749b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0774c6947f173e9d5638dbda99c99ae793e224fa3df0ff826f775034e63ea6cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variant31e8d1e07def2e93c062fdbd238319d1c1e9301129068af5b0b9b2bd337749b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:187a8506-cabb-6ad2-bd95-f6724c50ef6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.matrix_vecMul [NonUnitalNonAssocSemiring R] [ContinuousAdd R] [ContinuousMul R]
    [Fintype m] {A : X → m → R} {B : X → Matrix m n R} (hA : Continuous A) (hB : Continuous B) :
    Continuous fun x => A x ᵥ* B x :=
  continuous_pi fun _i => hA.dotProduct <| continuous_pi fun _j => hB.matrix_elem _ _

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variant31e8d1e07def2e93c062fdbd238319d1c1e9301129068af5b0b9b2bd337749b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variant31e8d1e07def2e93c062fdbd238319d1c1e9301129068af5b0b9b2bd337749b7.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf6bf54b135c2961ec756ff62b968dc48a6dd2dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
