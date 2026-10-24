# no_zeroComparator_regime_of_positive_sensitivity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bda40785-b85f-60f4-1127-49e76b02817d",
  "kind": "theorem",
  "lexical_name": "no_zeroComparator_regime_of_positive_sensitivity",
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
  "slug": "no-zerocomparator-regime-of-positive-sensitivity--347952f9c553db02c9221ae7",
  "source": {
    "blob": "d0f5231f4a5362f7e46830282b780e939023f402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant610a76fca100085b20dec169fdd3d4b40f501e9b05c5479b0d5209b06a7b239b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:347952f9c553db02c9221ae74cd58d784aa7f7776ad1f202e2abf266f2ecf981",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant610a76fca100085b20dec169fdd3d4b40f501e9b05c5479b0d5209b06a7b239b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda40785-b85f-60f4-1127-49e76b02817d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_zeroComparator_regime_of_positive_sensitivity
    (I : LinearIntervention X V)
    (hexists : ∃ x : X, 0 < C.interventionSensitivity I x) :
    ¬ Nonempty (C.ComparatorMarginRegime
        (LinearComparator.zero : LinearComparator V) I) := by
  rintro ⟨R⟩
  rcases hexists with ⟨x, hx⟩
  have hgap :
      0 < (LinearComparator.zero : LinearComparator V).comparatorGap I x :=
    R.positive_sensitivity_implies_positive_gap x hx
  rw [LinearComparator.zero_comparatorGap] at hgap
  exact (lt_irrefl 0) hgap

end ComparatorMarginRegime

end PositiveCommutingInvolutions

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant610a76fca100085b20dec169fdd3d4b40f501e9b05c5479b0d5209b06a7b239b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/9a2126a5750074b9c3369cd704797165374d166f5fd0b53aaa86af1b0c2bd4c2ComparatorMargin/Variant610a76fca100085b20dec169fdd3d4b40f501e9b05c5479b0d5209b06a7b239b.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0f5231f4a5362f7e46830282b780e939023f402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
