# causalEquivalent_iff_behavior_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9328abf2-063a-bb3b-3bdb-a23ac481e57d",
  "kind": "theorem",
  "lexical_name": "causalEquivalent_iff_behavior_eq",
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
  "slug": "causalequivalent-iff-behavior-eq--04b8ebaaa57bba74e23c8e14",
  "source": {
    "blob": "05aa7f8b8f26c8c7fe5563ce5899b7ccaacb34b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b8ebaaa57bba74e23c8e1461831912e94a4aa136f26f2481f88dc89b3ab2ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9328abf2-063a-bb3b-3bdb-a23ac481e57d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalEquivalent_iff_behavior_eq
    (M : System Input State Resolution)
    (x y : State) :
    M.CausalEquivalent x y ↔ M.behavior x = M.behavior y := by
  constructor
  · intro h
    funext inputs ρ
    exact h inputs ρ
  · intro h inputs ρ
    exact congrFun (congrFun h inputs) ρ

/-- The subtype of future behaviors actually realized by states of `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalState/Variant51c966ebc155ece67afc8ce416d1cd933c90dc08a911955577effa65254b4632.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05aa7f8b8f26c8c7fe5563ce5899b7ccaacb34b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
