# plusLambdaTable_agree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d87dfc38-bbfe-823f-90cb-45b2e70f5f87",
  "kind": "theorem",
  "lexical_name": "plusLambdaTable_agree",
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
  "slug": "pluslambdatable-agree--7a0416fd2b877e59c1dde454",
  "source": {
    "blob": "e7cea4a099f7bacda11013abf1af10a9d20575c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 913,
    "line": 892,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a0416fd2b877e59c1dde454ba32ed5bc96dd23d33d304289f9c13449094ccf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d87dfc38-bbfe-823f-90cb-45b2e70f5f87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 892–913.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plusLambdaTable_agree {n : Nat} (base : B)
    (body body' : Frame Q V (Minus Q V B O) → Plus Q V B O)
    (exit exit' : Frame Q V (Minus Q V B O) → O)
    (hb : ∀ a, FrameBound n a → Agree n (body a) (body' a))
    (he : ∀ a, FrameBound n a → exit a = exit' a) :
    Agree n (plusLambdaTable base body exit) (plusLambdaTable base body' exit') := by
  apply Agree.of_observations
  · intro as has
    cases as with
    | nil => rfl
    | cons a as =>
        exact (hb a (has a List.mem_cons_self)).continuing (fun x hx => has x
          (List.mem_cons_of_mem _ hx))
  · rintro ⟨as,e⟩ ⟨has,hes⟩
    cases as with
    | nil => exact he e hes
    | cons a as =>
        exact (hb a (has a List.mem_cons_self)).exiting
          ⟨fun x hx => has x (List.mem_cons_of_mem _ hx),hes⟩
end PureTypeSystem.FreeObservations

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Spaces/Variantcda4c02e4047be5e182ed8afe4e7d3649d9b4e86185cd956649121d43b264976.lean#L892).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7cea4a099f7bacda11013abf1af10a9d20575c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
