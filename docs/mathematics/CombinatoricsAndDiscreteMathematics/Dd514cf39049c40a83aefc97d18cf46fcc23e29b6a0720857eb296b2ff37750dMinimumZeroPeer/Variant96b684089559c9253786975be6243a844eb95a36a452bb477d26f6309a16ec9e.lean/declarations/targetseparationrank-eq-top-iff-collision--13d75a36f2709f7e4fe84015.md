# targetSeparationRank_eq_top_iff_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c55b8a9-5f1c-d239-be9b-bb84ed7089a5",
  "kind": "theorem",
  "lexical_name": "targetSeparationRank_eq_top_iff_collision",
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
  "slug": "targetseparationrank-eq-top-iff-collision--13d75a36f2709f7e4fe84015",
  "source": {
    "blob": "7814d1b79c109cd42047f4cad0cacd8489fb9139",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variant96b684089559c9253786975be6243a844eb95a36a452bb477d26f6309a16ec9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d75a36f2709f7e4fe84015811ca1a8faf948d198727b76d85c6ca0b5fddb88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variant96b684089559c9253786975be6243a844eb95a36a452bb477d26f6309a16ec9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c55b8a9-5f1c-d239-be9b-bb84ed7089a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetSeparationRank_eq_top_iff_collision (obs : Test → Object → Value)
    (admitted : Finset Test) (target : Object → Result) :
    TargetSeparationRank obs admitted target = ⊤ ↔
      ∃ x y, target x ≠ target y ∧ observationCarrier obs admitted x =
        observationCarrier obs admitted y := by
  classical
  rw [targetSeparationRank_eq_top_iff]
  constructor
  · intro insufficient
    change ¬ (∀ x y, target x ≠ target y → ∃ test ∈ admitted, obs test x ≠ obs test y)
      at insufficient
    push Not at insufficient
    obtain ⟨x, y, different, equal⟩ := insufficient
    exact ⟨x, y, different, (observationCarrier_eq_iff obs admitted x y).mpr equal⟩
  · rintro ⟨x, y, different, equal⟩ separates
    exact different ((separates_iff_descends obs admitted target).mp separates equal)

/-- Infinite rank is equivalent to the existing proof-bearing descent obstruction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variant96b684089559c9253786975be6243a844eb95a36a452bb477d26f6309a16ec9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Dd514cf39049c40a83aefc97d18cf46fcc23e29b6a0720857eb296b2ff37750dMinimumZeroPeer/Variant96b684089559c9253786975be6243a844eb95a36a452bb477d26f6309a16ec9e.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7814d1b79c109cd42047f4cad0cacd8489fb9139` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
