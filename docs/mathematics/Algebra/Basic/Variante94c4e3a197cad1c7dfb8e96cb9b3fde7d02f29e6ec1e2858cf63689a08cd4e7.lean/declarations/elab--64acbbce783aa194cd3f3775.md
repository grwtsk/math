# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee2ffaa111ec1f66f8af34c979c030f1975a2b2adeed9757060cb5d501bf939a",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--64acbbce783aa194cd3f3775",
  "source": {
    "blob": "0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 437,
    "path": "GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64acbbce783aa194cd3f377546502bb7b9194024ee064c4b104e7190533b6817",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee2ffaa111ec1f66f8af34c979c030f1975a2b2adeed9757060cb5d501bf939a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab (name := algebra) "algebra":tactic =>
  withMainContext do
    liftMetaTactic1 (transformAtTarget (fun e _ ↦ preprocess e) "algebra" .silent · default)
    let g ← getMainGoal
    AtomM.run .default (proveEq none g)

@[tactic_alt algebra]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante94c4e3a197cad1c7dfb8e96cb9b3fde7d02f29e6ec1e2858cf63689a08cd4e7.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dd5953d2e8bcc041f12f7ff84281f2cc2c73b23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
