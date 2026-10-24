# cfcHom_eq_cfcHomTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:229181af-8b05-0234-0674-8d16517e4a62",
  "kind": "lemma",
  "lexical_name": "cfcHom_eq_cfcHomTransfer",
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
  "slug": "cfchom-eq-cfchomtransfer--cbc59d68d32e20d3741048c8",
  "source": {
    "blob": "e49038b7ff9c5f7b63aeff0b8ec0a1414d8a2909",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbc59d68d32e20d3741048c8abb66b91f3318502ddc90b753bac938b66b121c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:229181af-8b05-0234-0674-8d16517e4a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcHom_eq_cfcHomTransfer [ContinuousFunctionalCalculus R B q] [ContinuousMap.UniqueHom R B]
    (e : A ≃⋆ₐ[R] B) (he : Continuous e) (hpq : ∀ x, p x ↔ q (e x)) (b : B) (hb : q b) :
    cfcHom hb = cfcHomTransfer e hpq b hb :=
  cfcHom_eq_of_continuous_of_map_id _ _ (continuous_cfcHomTransfer e hpq b hb he) <|
    cfcHomTransfer_id e hpq b hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Transfer/Variant819c1ca69b0721c6387f56f5057d0f545328a3da86faee9f684ae18cb6d4a0db.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49038b7ff9c5f7b63aeff0b8ec0a1414d8a2909` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
