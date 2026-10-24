# descMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12ea3292beff1b07419e2fa53b2cc7b5e359674659f132c7a8934e2fb7433d24",
  "kind": "def",
  "lexical_name": "descMorphism",
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
  "slug": "descmorphism--85d791d108fbbce29424cd88",
  "source": {
    "blob": "a6c4f1a087b79bdecdb789b84d26a5f115978668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 199,
    "path": "GRWTSK/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85d791d108fbbce29424cd8874ead39cc16c7550f2619fb08c677c6af42d511b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12ea3292beff1b07419e2fa53b2cc7b5e359674659f132c7a8934e2fb7433d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def descMorphism (s : Cocone F) : colimit F ⟶ s.pt :=
  ofHom
  { toFun := descFun F s
    map_one' := rfl
    map_mul' x y := by
      induction x using Quot.inductionOn
      induction y using Quot.inductionOn
      solve_by_elim }

set_option backward.isDefEq.respectTransparency false in
/-- Evidence that the proposed colimit is the colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Colimits/Variantcd80daadb0f50ab5958dd5bcab1b25e05e1013fe06af762165bb4711ab91cd30.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c4f1a087b79bdecdb789b84d26a5f115978668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
