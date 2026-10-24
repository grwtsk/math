# isRegular_iff_eq_zero_of_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db12e06f-1449-71eb-83a9-ec5adbe1733c",
  "kind": "lemma",
  "lexical_name": "isRegular_iff_eq_zero_of_mul",
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
  "slug": "isregular-iff-eq-zero-of-mul--48c05507be9ec2213045ae37",
  "source": {
    "blob": "5dadd769a4172867c0c3ac888c2ec5eb4d7bf1c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 191,
    "path": "GRWTSK/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48c05507be9ec2213045ae3757b91ceaf0c4fc6c6961eeb3a091c4d102a2d970",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db12e06f-1449-71eb-83a9-ec5adbe1733c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isRegular_iff_eq_zero_of_mul :
    IsRegular r ↔ (∀ x, r * x = 0 → x = 0) ∧ (∀ x, x * r = 0 → x = 0) := by
  rw [isRegular_iff, isLeftRegular_iff_right_eq_zero_of_mul, isRightRegular_iff_left_eq_zero_of_mul]

/-- A (not necessarily unital or associative) ring with no zero divisors has cancellative
multiplication on both sides. Since either left or right cancellative multiplication implies
the absence of zero divisors, the four conditions are equivalent to each other. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9495eaf9fe9a82b56f90913c329aeafb683442f4aef4737fcf1d4f1a8c04bbbf.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5dadd769a4172867c0c3ac888c2ec5eb4d7bf1c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
