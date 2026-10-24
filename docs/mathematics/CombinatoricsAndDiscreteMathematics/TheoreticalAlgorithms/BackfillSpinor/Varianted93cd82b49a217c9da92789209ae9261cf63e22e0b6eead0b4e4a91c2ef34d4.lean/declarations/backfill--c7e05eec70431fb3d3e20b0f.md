# backfill

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1aaf5a74947962c3003188e19e8adcf0c57e2e096622f7a4f5e270ddd667aa6e",
  "kind": "def",
  "lexical_name": "backfill",
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
  "slug": "backfill--c7e05eec70431fb3d3e20b0f",
  "source": {
    "blob": "f3322c58f5fa4780bc44ae04ee55d7ec3c791108",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7e05eec70431fb3d3e20b0fe8c8eb133879d9430fa9ad48688175ff93fa52a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1aaf5a74947962c3003188e19e8adcf0c57e2e096622f7a4f5e270ddd667aa6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def backfill (e : Edge) (dag : Dag) : Option BackfillResult :=
  if h : e.kind = .spinor ∧ e.from ≠ e.to then
    let trunc := backfill_limit
    let u := embed trunc e.from
    let v := embed trunc e.to

    -- Create intermediate nodes linearly interpolating in ℓ²
    let interp (t : ℚ) := fun i => (1 - t) * u i + t * v i
    let steps := List.range (trunc + 1)
    let alphas := steps.map (fun k => (k : ℚ) / trunc)
    let mids := alphas.map interp

    -- Generate stub material edges between adjacent midpoints
    let edges : List Edge :=
      mids.zip mids.tail
      |>.mapIdx (fun i ⟨a, b⟩ =>
        {
          id := ⟨toString i ++ "_" ++ e.id.uuid⟩,
          from := ⟨e.id.uuid ++ "_pt" ++ toString i⟩,
          to := ⟨e.id.uuid ++ "_pt" ++ toString (i+1)⟩,
          kind := .material,
          proof := .const ``sorry [],  -- to be elaborated later
          w? := some (dist a b),
          spec? := none
        })

    some {
      hops := edges,
      dense_reduction := homotopyWitness edges,
      valid := true
    }
  else none

/--
  Formal theorem (to be proven): backfilling a spinor edge yields a valid homotopy-equivalent path
  with verifiable material proof steps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BackfillSpinor/Varianted93cd82b49a217c9da92789209ae9261cf63e22e0b6eead0b4e4a91c2ef34d4.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3322c58f5fa4780bc44ae04ee55d7ec3c791108` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
