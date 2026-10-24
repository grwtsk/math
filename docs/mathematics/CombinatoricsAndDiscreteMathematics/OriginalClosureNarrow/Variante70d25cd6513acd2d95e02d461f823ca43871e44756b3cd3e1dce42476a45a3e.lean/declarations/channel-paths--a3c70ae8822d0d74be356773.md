# channel_paths

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:419b5bea-8fb8-2edf-0083-e4ebf255e483",
  "kind": "theorem",
  "lexical_name": "channel_paths",
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
  "slug": "channel-paths--a3c70ae8822d0d74be356773",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14946,
    "line": 14902,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3c70ae8822d0d74be3567733383f3fd8c8109fa101aa8c391b7631a36b16b70",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419b5bea-8fb8-2edf-0083-e4ebf255e483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14902–14946.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem channel_paths (h : ForbiddenConfiguration P C) :
    ∃ D : Set (Set S), IsComponent (SecondaryEdge P C) D ∧
    ∃ I J k s p n g j h',
      ProfileTriple P I J k ∧ J ∈ D ∧ k ∈ D ∧ ({s} : Set S) ∈ D ∧
      (AxProfile P s).Nonempty ∧ PositivePath (PrimaryEdge P) (AxProfile P s) I ∧
      ProfileTriple P p n g ∧ p ∈ D ∧ g ∈ D ∧ n ∈ ObservationLayers P C ∧
      SignedPath (SecondaryEdge P C) k p true ∧
      SignedPath (SecondaryEdge P C) p k true ∧
      SignedPath (SecondaryEdge P C) g J false ∧
      DirectLayer P C j ∧ SignedPath (SecondaryEdge P C) k j true ∧
      DirectLayer P C h' ∧ SignedPath (SecondaryEdge P C) k h' false ∧
      SignedPath (SecondaryEdge P C) p h' true := by
  obtain ⟨D, hD, hplain, hneg, I, J, k, s, hI, hJ, hk, hs, hax, hpath⟩ := h
  have path_layer {T A : Set S} {b : Bool}
      (hp : SignedPath (SecondaryEdge P C) T A b) (hA : A ∈ ObservationLayers P C) :
      T ∈ ObservationLayers P C := by
    cases hp with
    | nil => exact hA
    | cons he ht => cases he with
      | positive hsrc _ _ => exact hsrc
      | negative hsrc _ _ _ => exact hsrc
  have layer_of_plain {T : Set S} (ht : PlainLayer P C T) : T ∈ ObservationLayers P C := by
    obtain ⟨A, hA, hp⟩ := ht.1
    exact path_layer hp hA.1
  have hJ' := layer_of_plain (hplain J hJ)
  have hk' := layer_of_plain (hplain k hk)
  have hJk : SecondaryEdge P C J k false := .positive hJ' hk' (.codomain hI)
  obtain ⟨p, hp, g, hg, he, hkp, hpk, hgJ⟩ := hD.negative_routes hJ hk hJk hneg
  cases he with
  | negative _ hn _ htr =>
      obtain ⟨⟨h', hh', hkh'⟩, ⟨j, hj, hkj⟩⟩ := hplain k hk
      exact ⟨D, hD, I, J, k, s, p, _, g, j, h', hI, hJ, hk, hs, hax, hpath,
        htr, hp, hg, hn, hkp, hpk, hgJ, hj, hkj, hh', hkh', hpk.append hkh'⟩
end ForbiddenConfiguration

end PureTypeSystem

namespace PureTypeSystem.Labelled

section
universe u
open Classical

/-- A legal mode-preserving change of names. No hypotheses about convertibility
or proof existence are packed into the map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L14902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
