# causalToFinestLocal_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b732092-8692-5acb-b97c-630eba3c5299",
  "kind": "theorem",
  "lexical_name": "causalToFinestLocal_injective",
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
  "slug": "causaltofinestlocal-injective--3d23a55beed66072ff01a7c5",
  "source": {
    "blob": "f9f59d2b2f3525dead2c7ba082b0e94a2b1c1504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d23a55beed66072ff01a7c5bdccd9b7f2a526ae0b79487422e6ef3c3d5cd0bb",
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

Occurrence: `result:3b732092-8692-5acb-b97c-630eba3c5299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem causalToFinestLocal_injective
    (T : QuantizerTower M) :
    Function.Injective (causalToLocal M (⊤ : Resolution)) := by
  intro c d
  refine Quotient.inductionOn₂ c d ?_
  intro x y hxy
  apply Quotient.sound
  have htop : LocalCausalEquivalent M (⊤ : Resolution) x y :=
    (toLocalCausal_eq_iff M (⊤ : Resolution) x y).mp hxy
  intro inputs ρ
  calc
    M.observe ρ (M.run inputs x) =
        T.project (show ρ ≤ (⊤ : Resolution) from le_top)
          (M.observe ⊤ (M.run inputs x)) :=
      (T.observe_project le_top _).symm
    _ = T.project (show ρ ≤ (⊤ : Resolution) from le_top)
          (M.observe ⊤ (M.run inputs y)) := by
      rw [htop inputs]
    _ = M.observe ρ (M.run inputs y) :=
      T.observe_project le_top _

/--
With a finest resolution, global causal states are exactly its local causal
states.  The equivalence is the canonical global-to-local factor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/QuantizerTower/Variant8986cca64c4119e3cdce7ded27dbacc258ea10a04c0fe9dabb52d6626781a1ac.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f59d2b2f3525dead2c7ba082b0e94a2b1c1504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
