# partitionMoment_eq_iff_oneBlock_eq_isolated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bd128afe26c3a59834e68889ef7eedc7a3530cc2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9c/9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c15e5d4-4f70-ab77-fcaa-e98d89a547c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fac70c76-7077-dbe5-fdcd-8bd67eeb5d95",
  "kind": "theorem",
  "lexical_name": "partitionMoment_eq_iff_oneBlock_eq_isolated",
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
  "slug": "partitionmoment-eq-iff-oneblock-eq-isolated--5b2748ce5acb0fb43f20bd2e",
  "source": {
    "blob": "bd128afe26c3a59834e68889ef7eedc7a3530cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 221,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b2748ce5acb0fb43f20bd2ed7f510bb79e1c8ba3b976efccfbdfb20115380ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fac70c76-7077-dbe5-fdcd-8bd67eeb5d95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partitionMoment_eq_iff_oneBlock_eq_isolated
    (n : ℕ) (hn : 0 < n)
    (moment : R)
    (κ : Finset (Fin n) → R) :
    partitionMoment n κ = moment ↔
      κ (Finset.univ : Finset (Fin n)) =
        isolatedOneBlockCumulant n hn moment κ := by
  rw [partitionMoment_eq_oneBlock_add_proper n hn,
    isolatedOneBlockCumulant]
  constructor
  · intro h
    exact (eq_sub_iff_add_eq).2 h
  · intro h
    exact (eq_sub_iff_add_eq).1 h

/-- Predicate expressing the finite moment-cumulant relation at one order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant9cd7dbc6514f48a10ca4fae0c859d4bd77cb1324d836751b815b7f401e2c6d51.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd128afe26c3a59834e68889ef7eedc7a3530cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
