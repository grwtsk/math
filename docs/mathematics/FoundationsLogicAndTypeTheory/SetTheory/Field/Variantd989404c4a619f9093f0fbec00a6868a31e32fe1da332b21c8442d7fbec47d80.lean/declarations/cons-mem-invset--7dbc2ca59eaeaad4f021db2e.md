# cons_mem_invSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2c3e82a-ef4b-b20b-bd39-5d49582db626",
  "kind": "theorem",
  "lexical_name": "cons_mem_invSet",
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
  "slug": "cons-mem-invset--7dbc2ca59eaeaad4f021db2e",
  "source": {
    "blob": "533ffd0fea7755c69c198c4f4679425591c40778",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 259,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dbc2ca59eaeaad4f021db2ea43153f6fea4314e0050bbb755a24951b1182858",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2c3e82a-ef4b-b20b-bd39-5d49582db626`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_mem_invSet {a' : Nimber} (ha₀ : a' ≠ 0) (ha : a' < a) (hb : b ∈ invSet a) :
    invAux a' * (1 + (a + a') * b) ∈ invSet a := by
  rw [invSet] at hb ⊢
  exact Set.mem_sInter.2 fun _ hs => hs.2 _ ha ha₀ _ (Set.mem_sInter.1 hb _ hs)

/-- A recursion principle for `invSet`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `533ffd0fea7755c69c198c4f4679425591c40778` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
