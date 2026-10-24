# validFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca890433-c4dd-a60a-2c8d-152b654f0bc4",
  "kind": "theorem",
  "lexical_name": "validFor",
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
  "slug": "validfor--112e2911d603560db3ee8aca",
  "source": {
    "blob": "a880f73343c5476f55710a0d16f71c9bfba7178d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 981,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:112e2911d603560db3ee8aca40100f807d86bc48fffd8ec1f98f73476d5cafe5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca890433-c4dd-a60a-2c8d-152b654f0bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 981–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem validFor : ∀ {s}, Valid s → ∃ l m r, ValidFor l m r s
  | ⟨⟨_⟩, ⟨_⟩, ⟨_⟩⟩, ⟨⟨l, mr, rfl, rfl⟩, ⟨lm, r, e, rfl⟩, h⟩ => by
    simp at *
    have := (or_iff_right_iff_imp.2 fun h => ?x).1 (List.append_eq_append_iff.1 e)
    case x =>
      match l, r, h with | _, _, ⟨m, rfl, rfl⟩ => ?_
      simp at h
      cases utf8Len_eq_zero.1 <| Nat.le_zero.1 (Nat.le_of_add_le_add_left (c := 0) h)
      exact ⟨[], by simp⟩
    match lm, mr, this with
    | _, _, ⟨m, rfl, rfl⟩ => exact ⟨l, m, r, by simpa using ValidFor.mk⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean#L981).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a880f73343c5476f55710a0d16f71c9bfba7178d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
