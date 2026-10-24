# nnrpow_eq_nnrpow_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9a857bbea505af2f528e6dcd2db8cee73f66b50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9c0c54a-1834-a0d2-e7dd-42f85118be82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eecc3e87-8a79-f423-4c01-6c3e163de0ef",
  "kind": "lemma",
  "lexical_name": "nnrpow_eq_nnrpow_prod",
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
  "slug": "nnrpow-eq-nnrpow-prod--b5c9cf5de879950fd3288bd9",
  "source": {
    "blob": "f9a857bbea505af2f528e6dcd2db8cee73f66b50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5c9cf5de879950fd3288bd9ccd0b7196b31a0c1d2ddd96c6c15e100f1f0cd90",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eecc3e87-8a79-f423-4c01-6c3e163de0ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nnrpow_eq_nnrpow_prod {a : A} {b : B} {x : ℝ≥0}
    (ha : 0 ≤ a := by cfc_tac) (hb : 0 ≤ b := by cfc_tac) :
    nnrpow (a, b) x = (a, b) ^ x := nnrpow_map_prod

end prod

section pi

variable {ι : Type*} {C : ι → Type*} [∀ i, PartialOrder (C i)] [∀ i, NonUnitalRing (C i)]
  [∀ i, TopologicalSpace (C i)] [∀ i, StarRing (C i)]
  [∀ i, StarOrderedRing (C i)] [StarOrderedRing (∀ i, C i)]
  [∀ i, Module ℝ (C i)] [∀ i, SMulCommClass ℝ (C i) (C i)] [∀ i, IsScalarTower ℝ (C i) (C i)]
  [∀ i, NonUnitalContinuousFunctionalCalculus ℝ (C i) IsSelfAdjoint]
  [NonUnitalContinuousFunctionalCalculus ℝ (∀ i, C i) IsSelfAdjoint]
  [∀ i, IsTopologicalRing (C i)] [∀ i, T2Space (C i)]
  [NonnegSpectrumClass ℝ (∀ i, C i)] [∀ i, NonnegSpectrumClass ℝ (C i)]

/- Note that there is higher-priority instance of `Pow (∀ i, C i) ℝ≥0` coming from the `Pow`
instance for pi types, hence the direct use of `nnrpow` here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a857bbea505af2f528e6dcd2db8cee73f66b50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
