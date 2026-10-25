# localCausalEquivalent_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b5fe160-2e42-dea3-42bf-837b967da6b2",
  "kind": "theorem",
  "lexical_name": "localCausalEquivalent_of_le",
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
  "slug": "localcausalequivalent-of-le--d81091443ce25f18470a32b8",
  "source": {
    "blob": "f9f59d2b2f3525dead2c7ba082b0e94a2b1c1504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d81091443ce25f18470a32b8564bd662d372309c2f1fa62ce3810f79fab28229",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b5fe160-2e42-dea3-42bf-837b967da6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localCausalEquivalent_of_le
    (T : QuantizerTower M)
    {coarse fine : Resolution}
    (h : coarse ≤ fine)
    {x y : State}
    (hxy : LocalCausalEquivalent M fine x y) :
    LocalCausalEquivalent M coarse x y := by
  intro inputs
  calc
    M.observe coarse (M.run inputs x) =
        T.project h (M.observe fine (M.run inputs x)) :=
      (T.observe_project h _).symm
    _ = T.project h (M.observe fine (M.run inputs y)) := by
      rw [hxy inputs]
    _ = M.observe coarse (M.run inputs y) :=
      T.observe_project h _

/-- Forget fine observational distinctions that the coarse observer cannot see. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f59d2b2f3525dead2c7ba082b0e94a2b1c1504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
