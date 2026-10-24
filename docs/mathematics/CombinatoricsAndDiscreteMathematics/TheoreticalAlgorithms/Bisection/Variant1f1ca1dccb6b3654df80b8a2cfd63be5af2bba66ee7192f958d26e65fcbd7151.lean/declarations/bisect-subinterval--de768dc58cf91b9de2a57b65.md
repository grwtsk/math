# bisect_subinterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2b95f52-8861-98bc-b268-0582a91246ee",
  "kind": "theorem",
  "lexical_name": "bisect_subinterval",
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
  "slug": "bisect-subinterval--de768dc58cf91b9de2a57b65",
  "source": {
    "blob": "781efbca1cefe925ae0a4bb5573a26ee4e906ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 231,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de768dc58cf91b9de2a57b652f331f6b844a3b45f9c1380c042ec2aa2d4fd208",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2b95f52-8861-98bc-b268-0582a91246ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bisect_subinterval (I J : IntervalRat) (hJ : I.lo ≤ J.lo ∧ J.hi ≤ I.hi) :
    let (J₁, J₂) := J.bisect
    (I.lo ≤ J₁.lo ∧ J₁.hi ≤ I.hi) ∧ (I.lo ≤ J₂.lo ∧ J₂.hi ≤ I.hi) := by
  simp only [IntervalRat.bisect]
  constructor
  · constructor
    · exact hJ.1
    · calc J.midpoint = (J.lo + J.hi) / 2 := rfl
        _ ≤ (J.hi + J.hi) / 2 := by apply div_le_div_of_nonneg_right; linarith [J.le]; norm_num
        _ = J.hi := by ring
        _ ≤ I.hi := hJ.2
  · constructor
    · calc I.lo ≤ J.lo := hJ.1
        _ = J.lo * 2 / 2 := by ring
        _ = (J.lo + J.lo) / 2 := by ring
        _ ≤ (J.lo + J.hi) / 2 := by apply div_le_div_of_nonneg_right; linarith [J.le]; norm_num
        _ = J.midpoint := rfl
    · exact hJ.2

/-! ### Main correctness proofs -/

/-- noRoot never appears in output - the algorithm discards such intervals.
    We prove this by induction on iter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781efbca1cefe925ae0a4bb5573a26ee4e906ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
