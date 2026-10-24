# nat_neg_cpow_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d00827b-fc68-7327-c1bb-9a4016ce0d27",
  "kind": "lemma",
  "lexical_name": "nat_neg_cpow_mul",
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
  "slug": "nat-neg-cpow-mul--a352ff15fedcaf052931791e",
  "source": {
    "blob": "ebe2113f9b4d8647700d4b8a4e993c60939c50e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a352ff15fedcaf052931791eead105e81cd3f6ccef0a1834c8498bf387d68618",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d00827b-fc68-7327-c1bb-9a4016ce0d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nat_neg_cpow_mul {N : ℕ} (hN : 1 ≤ N) (s : ℂ) :
    (N : ℂ) ^ (-s) * (N : ℂ) = (N : ℂ) ^ (1 - s) := by
  have hN0 : (N : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.ne_of_gt (lt_of_lt_of_le
    Nat.zero_lt_one hN))
  calc
    (N : ℂ) ^ (-s) * (N : ℂ) = (N : ℂ) ^ (-s) * (N : ℂ) ^ (1 : ℂ) := by
      rw [Complex.cpow_one]
    _ = (N : ℂ) ^ (-s + 1) := (Complex.cpow_add _ _ hN0).symm
    _ = (N : ℂ) ^ (1 - s) := by congr 1; ring

/-- Finite Abel summation with every positive integer counted exactly once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFinitePower.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebe2113f9b4d8647700d4b8a4e993c60939c50e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
