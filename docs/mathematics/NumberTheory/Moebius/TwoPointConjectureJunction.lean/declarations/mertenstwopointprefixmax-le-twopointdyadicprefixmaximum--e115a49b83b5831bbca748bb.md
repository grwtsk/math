# mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b632e7cd-ce10-253c-d60f-fdec259f4af6",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum",
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
  "slug": "mertenstwopointprefixmax-le-twopointdyadicprefixmaximum--e115a49b83b5831bbca748bb",
  "source": {
    "blob": "4c2a421b62915ddf0151fc3dd744570dd7b0eaa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 199,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointConjectureJunction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e115a49b83b5831bbca748bb90dbfc39e737791e82521fc6d4493b82e47beda7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointConjectureJunction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b632e7cd-ce10-253c-d60f-fdec259f4af6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum
    (j h : ℕ) :
    mertensTwoPointPrefixMax j h ≤
      twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h := by
  unfold mertensTwoPointPrefixMax
  apply (partialSups_le_iff).2
  intro N hN
  have hNcut : N ≤ dyadicTwoPointCutoff j h := by
    simpa [dyadicTwoPointCutoff] using hN
  have hNY : N ≤ 2 ^ (j + 1) := by
    unfold dyadicTwoPointCutoff at hNcut
    exact hNcut.trans ((Nat.sub_le _ _).trans (Nat.sub_le _ _))
  calc
    |mertensTwoPointPrefix h N| =
        |finitePrefixSum
          (paddedTwoPointSequence moebiusReal moebiusReal j h) N| := by
      rw [finitePrefixSum_padded_moebius_eq_mertens hNcut]
    _ ≤ twoPointDyadicPrefixMaximum moebiusReal moebiusReal j h := by
      unfold twoPointDyadicPrefixMaximum dyadicPrefixMaximum
      exact le_partialSups_of_le
        (fun n : ℕ =>
          |finitePrefixSum
            (paddedTwoPointSequence moebiusReal moebiusReal j h) n|)
        hNY

/-- One exact shift-wise connection: the canonical Möbius prefix maximum is
controlled by `j+2` times the complete zero-padded aligned-tree energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointConjectureJunction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointConjectureJunction.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c2a421b62915ddf0151fc3dd744570dd7b0eaa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
