# Iter.step_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bdfb0ee-39bc-fe90-7580-fe0f858218c0",
  "kind": "theorem",
  "lexical_name": "Iter.step_drop",
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
  "slug": "iter-step-drop--6403649fc7627eaa4a1389f7",
  "source": {
    "blob": "75c09ef28a6a37b7e427dadae8b94526dea6b359",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6403649fc7627eaa4a1389f7b4e563fc828fa0be3b7080c1feff1fdc40e41999",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bdfb0ee-39bc-fe90-7580-fe0f858218c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.step_drop {α β} [Iterator α Id β] {n : Nat}
    {it : Iter (α := α) β} :
    (it.drop n).step = (match it.step with
    | .yield it' out h =>
      match n with
      | 0 => .yield (it'.drop 0) out (.yield h rfl)
      | k + 1 => .skip (it'.drop k) (.drop h rfl)
    | .skip it' h => .skip (it'.drop n) (.skip h)
    | .done h => .done (.done h)) := by
  simp only [drop_eq, step, toIterM_toIter, IterM.step_drop, Id.run_bind]
  generalize it.toIterM.step.run = step
  cases step.inflate using PlausibleIterStep.casesOn <;> cases n <;>
    simp [PlausibleIterStep.yield, PlausibleIterStep.skip, PlausibleIterStep.done]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Drop/Variant0ca5e018bb310fd7e2dbc868243b5e423c9af18489bab66fc8756c37f02c453a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75c09ef28a6a37b7e427dadae8b94526dea6b359` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
