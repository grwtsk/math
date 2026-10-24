# observation_coarsening_checked

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:427cd749-e512-972e-8ee3-b0b8c5091697",
  "kind": "theorem",
  "lexical_name": "observation_coarsening_checked",
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
  "slug": "observation-coarsening-checked--e387464310853956735725b2",
  "source": {
    "blob": "e939b1f58286eab8c684bfc82340e860ff479988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant01504a9e718aeecdb8dfb9ccfb4c2f3fd9da5998575b9ec7029df6cda3f7b694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e387464310853956735725b22679d888ea16a0d228665c098fd9eefc16ab2892",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant01504a9e718aeecdb8dfb9ccfb4c2f3fd9da5998575b9ec7029df6cda3f7b694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:427cd749-e512-972e-8ee3-b0b8c5091697`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem observation_coarsening_checked : ObservationCoarseningObligation :=
  ⟨FiniteNotion.compare_eq_true,
    fun _ _ _ _ _ bound equal ↦ FiniteNotion.equivalent_of_budget_le bound equal,
    fun _ _ _ _ _ bound equal ↦ observationallyEquivalent_of_budget_le bound equal⟩

open Assumptions

/-- Complete checked discharges yield the target only after dependent replay; the fixed
arithmetic fixtures also reject a wrong-scope discharge and a stale replay identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant01504a9e718aeecdb8dfb9ccfb4c2f3fd9da5998575b9ec7029df6cda3f7b694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationMemoryTargets/Variant01504a9e718aeecdb8dfb9ccfb4c2f3fd9da5998575b9ec7029df6cda3f7b694.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e939b1f58286eab8c684bfc82340e860ff479988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
