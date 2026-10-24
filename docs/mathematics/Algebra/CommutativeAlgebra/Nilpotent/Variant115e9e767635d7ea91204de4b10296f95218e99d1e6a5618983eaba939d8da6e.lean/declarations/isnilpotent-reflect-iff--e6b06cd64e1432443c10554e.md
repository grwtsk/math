# isNilpotent_reflect_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65d10874-1758-56ec-467e-057ec04c3cc6",
  "kind": "lemma",
  "lexical_name": "isNilpotent_reflect_iff",
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
  "slug": "isnilpotent-reflect-iff--e6b06cd64e1432443c10554e",
  "source": {
    "blob": "1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 91,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6b06cd64e1432443c10554e8e06f6d89e605d04d7b8cf88238117f7b715b594",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65d10874-1758-56ec-467e-057ec04c3cc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma isNilpotent_reflect_iff {P : R[X]} {N : ℕ} (hN : P.natDegree ≤ N) :
    IsNilpotent (reflect N P) ↔ IsNilpotent P := by
  simp only [Polynomial.isNilpotent_iff, coeff_reverse]
  refine ⟨fun h i ↦ ?_, fun h i ↦ ?_⟩ <;> rcases le_or_lt i N with hi | hi
  · simpa [tsub_tsub_cancel_of_le hi] using h (N - i)
  · simp [coeff_eq_zero_of_natDegree_lt <| lt_of_le_of_lt hN hi]
  · simpa [hi, revAt_le] using h (N - i)
  · simpa [revAt_eq_self_of_lt hi] using h i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
