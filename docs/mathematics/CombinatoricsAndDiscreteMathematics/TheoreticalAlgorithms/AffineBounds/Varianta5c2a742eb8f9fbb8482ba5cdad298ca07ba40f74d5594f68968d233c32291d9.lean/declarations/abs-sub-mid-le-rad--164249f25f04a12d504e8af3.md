# abs_sub_mid_le_rad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fb69661-0077-c44e-1061-aa433fdf70e0",
  "kind": "lemma",
  "lexical_name": "abs_sub_mid_le_rad",
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
  "slug": "abs-sub-mid-le-rad--164249f25f04a12d504e8af3",
  "source": {
    "blob": "43db5626484df9bfd111783a509be06f30369160",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:164249f25f04a12d504e8af3bc8f18777c24d39de47398339340c13deeb5cc8c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fb69661-0077-c44e-1061-aa433fdf70e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma abs_sub_mid_le_rad {x : ℝ} {I : IntervalRat} (hx : x ∈ I) :
    |x - ((I.lo + I.hi) / 2 : ℚ)| ≤ ((I.hi - I.lo) / 2 : ℚ) := by
  have hx' : (I.lo : ℝ) ≤ x ∧ x ≤ I.hi := by
    simpa [IntervalRat.mem_def] using hx
  rw [abs_le]
  constructor
  · calc -((((I.hi : ℚ) - I.lo) / 2 : ℚ) : ℝ)
        = (I.lo : ℝ) - ((I.lo : ℝ) + I.hi) / 2 := by push_cast; ring
      _ ≤ x - ((I.lo : ℝ) + I.hi) / 2 := by linarith [hx'.1]
      _ = x - ((((I.lo : ℚ) + I.hi) / 2 : ℚ) : ℝ) := by push_cast; ring
  · calc x - ((((I.lo : ℚ) + I.hi) / 2 : ℚ) : ℝ)
        = x - ((I.lo : ℝ) + I.hi) / 2 := by push_cast; ring
      _ ≤ (I.hi : ℝ) - ((I.lo : ℝ) + I.hi) / 2 := by linarith [hx'.2]
      _ = ((((I.hi : ℚ) - I.lo) / 2 : ℚ) : ℝ) := by push_cast; ring

/-- Create the canonical noise assignment for a single variable x in interval I -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineBounds/Varianta5c2a742eb8f9fbb8482ba5cdad298ca07ba40f74d5594f68968d233c32291d9.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43db5626484df9bfd111783a509be06f30369160` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
