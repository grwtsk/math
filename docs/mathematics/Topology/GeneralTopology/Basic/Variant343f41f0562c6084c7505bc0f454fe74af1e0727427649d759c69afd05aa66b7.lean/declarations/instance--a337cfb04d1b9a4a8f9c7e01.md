# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93a9dfa85bbdc211bef0764c234b43c2859acb25c89b819f740fc2bbc7555436",
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
  "slug": "instance--a337cfb04d1b9a4a8f9c7e01",
  "source": {
    "blob": "461fd72c5b1f47060d4d0a83d78e7ed3261503fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a337cfb04d1b9a4a8f9c7e015adfc431eaf63004193a7185e400f9c123493993",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:93a9dfa85bbdc211bef0764c234b43c2859acb25c89b819f740fc2bbc7555436`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : CompHaus.{u}) [Projective X] : ExtremallyDisconnected X := by
  apply CompactT2.Projective.extremallyDisconnected
  intro A B _ _ _ _ _ _ f g hf hg hsurj
  let A' : CompHaus := ↧A
  let B' : CompHaus := ↧B
  let f' : X ⟶ B' := CompHausLike.ofHom _ ⟨f, hf⟩
  let g' : A' ⟶ B' := CompHausLike.ofHom _ ⟨g,hg⟩
  have : Epi g' := by rwa [CompHaus.epi_iff_surjective]
  obtain ⟨h, hh⟩ := Projective.factors f' g'
  refine ⟨h, h.hom.hom.2, ?_⟩
  ext t
  apply_fun (fun e => e t) at hh
  exact hh

/-- `Projective` implies `Stonean`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant343f41f0562c6084c7505bc0f454fe74af1e0727427649d759c69afd05aa66b7.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `461fd72c5b1f47060d4d0a83d78e7ed3261503fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
