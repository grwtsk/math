# expMapCircle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3d7a8cb5bb087b6d90c85d47f5b2d06a48e23d78ee16f7565e4a02d0638bb9d",
  "kind": "def",
  "lexical_name": "expMapCircle",
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
  "slug": "expmapcircle--754f8e7fafbddb72cdb9d1ee",
  "source": {
    "blob": "bc362fd6afe41331478749d2a6190233fbb8e816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 124,
    "path": "GRWTSK/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:754f8e7fafbddb72cdb9d1eedf2280e7c362844938bd802a299c2eec5b6e07b0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3d7a8cb5bb087b6d90c85d47f5b2d06a48e23d78ee16f7565e4a02d0638bb9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def expMapCircle : C(ℝ, circle)
    where toFun t := ⟨exp (t * I), by simp [exp_mul_I, abs_cos_add_sin_mul_I]⟩
#align exp_map_circle expMapCircle

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Circle/Variante4a98508cf56742ca566451837e6787eeb364346545ce527983ff518380c3503.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc362fd6afe41331478749d2a6190233fbb8e816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
