# omegaImpl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c058d56cb1c3d8987a790f0d3daa86a7361b6aae68a140c1c43c969910b8d9b",
  "kind": "def",
  "lexical_name": "omegaImpl",
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
  "slug": "omegaimpl--f87bb55a1c48427cd46d394c",
  "source": {
    "blob": "3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 649,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f87bb55a1c48427cd46d394c7bb428ff914cfb34b45cc86c6f9a6761a8493fa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c058d56cb1c3d8987a790f0d3daa86a7361b6aae68a140c1c43c969910b8d9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def omegaImpl (m : MetaProblem) : OmegaM Expr := do
  let (m, _) ← m.processFacts
  guard m.facts.isEmpty
  let p := m.problem
  trace[omega] "Extracted linear arithmetic problem:\nAtoms: {← atomsList}\n{p}"
  let p' ← if p.possible then p.elimination else pure p
  trace[omega] "After elimination:\nAtoms: {← atomsList}\n{p'}"
  match h₁ : p'.possible, h₂ : p'.proveFalse?, p'.proveFalse?_spec with
  | true, _, _ =>
    splitDisjunction m
  | false, .some prf, _ =>
    trace[omega] "Justification:\n{p'.explanation?.get}"
    let prf ← instantiateMVars (← prf)
    trace[omega] "omega found a contradiction, proving {← inferType prf}"
    return prf
  | false, none, h₃ => by simp [h₁, h₂] at h₃

end

/--
Given a collection of facts, try prove `False` using the omega algorithm,
and close the goal using that.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Frontend/Variant835fe8c15d9ec38157c3ead0b1c68b0f0ee498049918fa4120cd2c7727bced53.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c1a7aabf2a83b12654ed5bf15eee7e84ccbdf35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
