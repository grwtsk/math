# iso_map_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb3ede39-3f97-d9a4-5fbc-01c234720dfe",
  "kind": "lemma",
  "lexical_name": "iso_map_bijective",
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
  "slug": "iso-map-bijective--51bad57fa38c0abef953cf79",
  "source": {
    "blob": "5d7bf4d8f6605259eeb0a8b72099922ba045358b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 192,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51bad57fa38c0abef953cf79ae0151cdb33ad46e70ecd193d59e7e10a1eb59e9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb3ede39-3f97-d9a4-5fbc-01c234720dfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iso_map_bijective : Function.Bijective (iso_map C J) := by
  refine ⟨fun a b h ↦ ?_, fun a ↦ ?_⟩
  · ext i
    rw [Subtype.ext_iff] at h
    by_cases hi : J i
    · exact congr_fun h ⟨i, hi⟩
    · rcases a with ⟨_, c, hc, rfl⟩
      rcases b with ⟨_, d, hd, rfl⟩
      simp only [Proj, ite_eq_right hi]
  · refine ⟨⟨fun i ↦ if hi : J i then a.val ⟨i, hi⟩ else false, ?_⟩, ?_⟩
    · rcases a with ⟨_, y, hy, rfl⟩
      exact ⟨y, hy, rfl⟩
    · ext i
      exact dite_eq_left i.prop

variable {C}

/--
For a given compact subset `C` of `I → Bool`, `spanFunctor` is the functor from the poset of finsets
of `I` to `Profinite`, sending a finite subset set `J` to the image of `C` under the projection
`Proj J`.
-/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantee71813d4a636b6f588359839bc4d7e2d91b04baa98c59fecc48ef47f88dd59c.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d7bf4d8f6605259eeb0a8b72099922ba045358b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
