# tsub_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834864db-991a-fca9-b366-78d12f14c667",
  "kind": "theorem",
  "lexical_name": "tsub_mul",
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
  "slug": "tsub-mul--6afeaa8f0881dd0294976ae4",
  "source": {
    "blob": "dddd6c6f926f3fdc8c18fb623309e2ca1ffe23a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 123,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6afeaa8f0881dd0294976ae4e199af913732351dea7d30cbbd10f26cf9b624a5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834864db-991a-fca9-b366-78d12f14c667`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem tsub_mul [MulRightMono R] {a b c : R}
    (h : AddLECancellable (b * c)) : (a - b) * c = a * c - b * c := by
  obtain (hab | hba) := total_of (· ≤ ·) a b
  · rw [tsub_eq_zero_iff_le.2 hab, zero_mul, tsub_eq_zero_iff_le.2 (mul_le_mul_right' hab c)]
  · apply h.eq_tsub_of_add_eq
    rw [← add_mul, tsub_add_cancel_of_le hba]

end AddLECancellable

variable [AddLeftReflectLE R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Canonical/Variantb1d9bd6a9d067dda6cb8cf642fa9c261bcf93eec3295732c38a2c161261c720e.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dddd6c6f926f3fdc8c18fb623309e2ca1ffe23a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
