# gcd_least_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce4100dd-d184-63d6-d800-c886d1c180f8",
  "kind": "theorem",
  "lexical_name": "gcd_least_linear",
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
  "slug": "gcd-least-linear--7508ff72eec2cd22cfe887d4",
  "source": {
    "blob": "aed4d3fb38c29e1d2d465d4b10d4c45b158fe5e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 258,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7508ff72eec2cd22cfe887d4e24293dbfc13ebdbd0f67139529492cac09697aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce4100dd-d184-63d6-d800-c886d1c180f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gcd_least_linear {a b : ℤ} (ha : a ≠ 0) :
    IsLeast { n : ℕ | 0 < n ∧ ∃ x y : ℤ, ↑n = a * x + b * y } (a.gcd b) := by
  simp_rw [← gcd_dvd_iff]
  constructor
  · simpa [and_true, dvd_refl, Set.mem_setOf_eq] using gcd_pos_of_ne_zero_left b ha
  · simp only [lowerBounds, and_imp, Set.mem_setOf_eq]
    exact fun n hn_pos hn => Nat.le_of_dvd hn_pos hn

end Int

@[to_additive gcd_nsmul_eq_zero]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GCD/Variant6ceb298aed8db60db6df0601d070316644952f796e63295053cc4879e2bc90df.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aed4d3fb38c29e1d2d465d4b10d4c45b158fe5e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
