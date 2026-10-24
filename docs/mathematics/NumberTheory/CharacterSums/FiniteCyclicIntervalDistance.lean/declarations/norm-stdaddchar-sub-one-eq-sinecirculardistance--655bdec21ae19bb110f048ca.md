# norm_stdAddChar_sub_one_eq_sineCircularDistance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53ccfb86-286a-8a9a-2c43-244c2b243cff",
  "kind": "theorem",
  "lexical_name": "norm_stdAddChar_sub_one_eq_sineCircularDistance",
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
  "slug": "norm-stdaddchar-sub-one-eq-sinecirculardistance--655bdec21ae19bb110f048ca",
  "source": {
    "blob": "5d78497f8a1cdadee5da6a0b4a8083b3c97ab008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:655bdec21ae19bb110f048ca45f5a0cb57e6e2e56be7dee8ff9b55a3b4080911",
  "verification": {
    "reference": "docs/verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53ccfb86-286a-8a9a-2c43-244c2b243cff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_stdAddChar_sub_one_eq_sineCircularDistance (t : ZMod q) :
    ‖ZMod.stdAddChar t - 1‖ =
      ‖(2 : ℝ) *
        Real.sin
          (Real.pi * (finiteCyclicCircularDistance t : ℝ) / (q : ℝ))‖ := by
  unfold finiteCyclicCircularDistance
  by_cases hside : t.val ≤ (-t).val
  · rw [min_eq_left hside]
    exact finiteCyclic_stdAddChar_sub_one_norm_eq_valSine t
  · rw [min_eq_right (Nat.le_of_not_ge hside)]
    rw [← finiteCyclic_stdAddChar_sub_one_norm_neg t]
    exact finiteCyclic_stdAddChar_sub_one_norm_eq_valSine (-t)

/-- Jordan lower scale attached to one finite cyclic frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CharacterSums/FiniteCyclicIntervalDistance.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d78497f8a1cdadee5da6a0b4a8083b3c97ab008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
