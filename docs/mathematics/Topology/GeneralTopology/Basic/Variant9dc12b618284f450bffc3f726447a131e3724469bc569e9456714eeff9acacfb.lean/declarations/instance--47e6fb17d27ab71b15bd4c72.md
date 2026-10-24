# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffb0eae888ad120a535f8f0a488a9c763973496126b515245ebfa0c5dfa08a17",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--47e6fb17d27ab71b15bd4c72",
  "source": {
    "blob": "819a1d713f60177fd85bfaf6eaafe779e78f3073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:47e6fb17d27ab71b15bd4c72e5ce794b60c78ac5b69df7c815aa361c6813b1fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffb0eae888ad120a535f8f0a488a9c763973496126b515245ebfa0c5dfa08a17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : CompHaus.{u}) [Projective X] : ExtremallyDisconnected X := by
  apply CompactT2.Projective.extremallyDisconnected
  intro A B _ _ _ _ _ _ f g hf hg hsurj
  have : CompactSpace (TopCat.of A) := by assumption
  have : T2Space (TopCat.of A) := by assumption
  have : CompactSpace (TopCat.of B) := by assumption
  have : T2Space (TopCat.of B) := by assumption
  let A' : CompHaus := ⟨TopCat.of A⟩
  let B' : CompHaus := ⟨TopCat.of B⟩
  let f' : X ⟶ B' := ⟨f, hf⟩
  let g' : A' ⟶ B' := ⟨g,hg⟩
  have : Epi g' := by
    rw [CompHaus.epi_iff_surjective]
    assumption
  obtain ⟨h,hh⟩ := Projective.factors f' g'
  refine ⟨h,h.2,?_⟩
  ext t
  apply_fun (fun e => e t) at hh
  exact hh

/-- `Projective` implies `Stonean`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9dc12b618284f450bffc3f726447a131e3724469bc569e9456714eeff9acacfb.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `819a1d713f60177fd85bfaf6eaafe779e78f3073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
