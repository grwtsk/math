# initialStorage_abs_sub_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7d0ce78-c461-2764-8ceb-3dcbd470d023",
  "kind": "theorem",
  "lexical_name": "initialStorage_abs_sub_four",
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
  "slug": "initialstorage-abs-sub-four--52ef8fc95cca579ca81201e4",
  "source": {
    "blob": "244d46d992fd8b26c8575e9a6c929af7a11e2985",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 99,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ef8fc95cca579ca81201e4ea643d55b713ccc7db15db27ef4f78be20f63122",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7d0ce78-c461-2764-8ceb-3dcbd470d023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initialStorage_abs_sub_four {L b h : ℝ} (hh : 0 ≤ h)
    (hL : |L| ≤ 5 * h) (hb : |b| ≤ 2 * h) :
    |initialStorage L b - 4| ≤ 69 * h + 245 * h ^ 2 := by
  have ht : |1 + L| ≤ 1 + |L| := by simpa using abs_add_le (1 : ℝ) L
  have hLs : |L| ^ 2 ≤ (5 * h) ^ 2 := by nlinarith [abs_nonneg L]
  have hp : |b| * |1 + L| ≤ 2 * h * (1 + 5 * h) :=
    mul_le_mul hb (by linarith) (abs_nonneg _) (by positivity)
  calc
    |initialStorage L b - 4| = |9 * L + 5 * L ^ 2 - 12 * b * (1 + L)| := by
      congr 1
      unfold initialStorage
      ring
    _ ≤ |9 * L| + |5 * L ^ 2| + |12 * b * (1 + L)| := by
      have ha := abs_add_le (9 * L) (5 * L ^ 2)
      have hs := abs_sub (9 * L + 5 * L ^ 2) (12 * b * (1 + L))
      linarith
    _ = 9 * |L| + 5 * |L| ^ 2 + 12 * (|b| * |1 + L|) := by
      simp [abs_mul, abs_pow]
      ring
    _ ≤ 69 * h + 245 * h ^ 2 := by nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceKapitzaStorage/Variant46df175bfeb9c19e44498bdf621b40c342012fcecf18f93016b4348492f3cc0a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `244d46d992fd8b26c8575e9a6c929af7a11e2985` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
