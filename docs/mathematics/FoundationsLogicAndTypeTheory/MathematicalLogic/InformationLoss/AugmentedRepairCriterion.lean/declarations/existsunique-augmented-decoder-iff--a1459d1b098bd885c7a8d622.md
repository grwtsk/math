# existsUnique_augmented_decoder_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64054fa4-8b04-0a19-adb5-e0833e97e728",
  "kind": "theorem",
  "lexical_name": "existsUnique_augmented_decoder_iff",
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
  "slug": "existsunique-augmented-decoder-iff--a1459d1b098bd885c7a8d622",
  "source": {
    "blob": "fa60e69e2a170c8b588227aab97d359adf04586e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 28,
    "path": "GRWTSK/Logic/InformationLoss/AugmentedRepairCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1459d1b098bd885c7a8d622da6f3e7da3efcc3887186293c5a6af333abbf662",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/AugmentedRepairCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64054fa4-8b04-0a19-adb5-e0833e97e728`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_augmented_decoder_iff
    {X : Type u} {Y : Type v} {Z : Type w} {W : Type t}
    (profile : X → Y) (extra : X → W) (readout : X → Z) :
    (∃! decode : Set.range (augmentedProfile profile extra) → Z,
      readout = decode ∘ observedProfile (augmentedProfile profile extra)) ↔
      ∀ x y : X,
        profile x = profile y →
        extra x = extra y →
        readout x = readout y := by
  rw [existsUnique_decoder_observedProfile_iff]
  constructor
  · intro h x y hp he
    apply h x y
    exact Prod.ext hp he
  · intro h x y hp
    exact h x y (congrArg Prod.fst hp) (congrArg Prod.snd hp)

/-- If the extra measurement itself factors through the old profile,
it cannot fix a failure of old-profile fiber constancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/AugmentedRepairCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/InformationLoss/AugmentedRepairCriterion.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa60e69e2a170c8b588227aab97d359adf04586e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
