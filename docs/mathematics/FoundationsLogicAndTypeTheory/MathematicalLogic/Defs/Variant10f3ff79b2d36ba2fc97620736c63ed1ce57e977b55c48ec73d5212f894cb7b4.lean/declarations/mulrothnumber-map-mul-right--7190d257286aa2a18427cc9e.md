# mulRothNumber_map_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c05a9f0-b3b9-eb61-1b5a-78adf6900f86",
  "kind": "theorem",
  "lexical_name": "mulRothNumber_map_mul_right",
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
  "slug": "mulrothnumber-map-mul-right--7190d257286aa2a18427cc9e",
  "source": {
    "blob": "ed20367611106a8aa2fd46bdaac51858d2c122e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7190d257286aa2a18427cc9e866fbd2d04b7deabf4f16b6b964905d7f12f38d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c05a9f0-b3b9-eb61-1b5a-78adf6900f86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulRothNumber_map_mul_right :
    mulRothNumber (s.map <| mulRightEmbedding a) = mulRothNumber s := by
  rw [← mulLeftEmbedding_eq_mulRightEmbedding, mulRothNumber_map_mul_left s a]

end CancelCommMonoid

end RothNumber

section rothNumberNat

variable {k n : ℕ}

/-- The Roth number of a natural `N` is the largest integer `m` for which there is a subset of
`range N` of size `m` with no arithmetic progression of length 3.
Trivially, `rothNumberNat N ≤ N`, but Roth's theorem (proved in 1953) shows that
`rothNumberNat N = o(N)` and the construction by Behrend gives a lower bound of the form
`N * exp(-C sqrt(log(N))) ≤ rothNumberNat N`.
A significant refinement of Roth's theorem by Bloom and Sisask announced in 2020 gives
`rothNumberNat N = O(N / (log N)^(1+c))` for an absolute constant `c`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed20367611106a8aa2fd46bdaac51858d2c122e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
