# finiteCyclicCircularDistance_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cac1847-5c50-8a5b-cc12-504057ebb12c",
  "kind": "theorem",
  "lexical_name": "finiteCyclicCircularDistance_eq_zero_iff",
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
  "slug": "finitecycliccirculardistance-eq-zero-iff--469869695a1df68a2330316c",
  "source": {
    "blob": "e7afc88eac8ba7c8f23acee83df6811dc4d61659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 30,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469869695a1df68a2330316cad9985d29898a05167025c4e7ebec9c796a206df",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cac1847-5c50-8a5b-cc12-504057ebb12c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteCyclicCircularDistance_eq_zero_iff
    {q : ℕ} [NeZero q]
    (t : ZMod q) :
    finiteCyclicCircularDistance t = 0 ↔ t = 0 := by
  constructor
  · intro h
    by_cases ht : t = 0
    · exact ht
    · have htval : 0 < t.val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero t).not.mpr ht)
      have hnt : -t ≠ 0 := neg_ne_zero.mpr ht
      have hntval : 0 < (-t).val := by
        exact Nat.pos_of_ne_zero ((ZMod.val_eq_zero (-t)).not.mpr hnt)
      unfold finiteCyclicCircularDistance at h
      omega
  · rintro rfl
    simp [finiteCyclicCircularDistance]

/-- Circular distance is invariant under frequency negation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicDistance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicDistance.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7afc88eac8ba7c8f23acee83df6811dc4d61659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
