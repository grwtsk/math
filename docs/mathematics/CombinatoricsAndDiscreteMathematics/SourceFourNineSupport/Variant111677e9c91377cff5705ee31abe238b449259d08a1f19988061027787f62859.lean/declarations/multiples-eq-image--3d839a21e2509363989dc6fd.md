# multiples_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcf022aa-67cf-8ed3-2bad-e55177782dff",
  "kind": "theorem",
  "lexical_name": "multiples_eq_image",
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
  "slug": "multiples-eq-image--3d839a21e2509363989dc6fd",
  "source": {
    "blob": "fc2dbd532d3735536d198f95d7f5b6753e839dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 20,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d839a21e2509363989dc6fd9b1281b200d1bc6153dcfda2ec3ebd7b9b08860f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcf022aa-67cf-8ed3-2bad-e55177782dff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem multiples_eq_image (k N : Nat) (hk : 0 < k) :
    (Finset.Icc 1 N).filter (fun n => k ∣ n) =
      (Finset.Icc 1 (N / k)).image (fun j => k * j) := by
  classical
  ext n
  simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_image]
  constructor
  · intro hn
    refine ⟨n / k, ?_, Nat.mul_div_cancel' hn.2⟩
    have he := Nat.mul_div_cancel' hn.2
    constructor
    · by_contra h
      have h0 : n / k = 0 := by omega
      rw [h0, mul_zero] at he
      omega
    · exact Nat.div_le_div_right hn.1.2
  · rintro ⟨j, hj, rfl⟩
    constructor
    · constructor
      · nlinarith [hj.1]
      · exact (Nat.le_div_iff_mul_le hk).mp hj.2
    · exact dvd_mul_right k j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant111677e9c91377cff5705ee31abe238b449259d08a1f19988061027787f62859.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc2dbd532d3735536d198f95d7f5b6753e839dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
