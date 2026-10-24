# multiples_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7bc7c99-e33a-83fa-de81-2e46404b1a2d",
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
  "slug": "multiples-eq-image--84bf647eb12bbf27ff4c63bd",
  "source": {
    "blob": "191694dcffb955d842ed61ef7f491413ba99656b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84bf647eb12bbf27ff4c63bd4859734d60f6ff60ed4fecd0a3288f55ec54683f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7bc7c99-e33a-83fa-de81-2e46404b1a2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–50.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceFourNineSupport/Variant438e4185da8f497bf7961d9d68db17e4c7d2c818ea8f8252bc8d0b5180478653.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `191694dcffb955d842ed61ef7f491413ba99656b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
