# goldbachRationalArcRadius_add_lt_inverse_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7da66fc3-d9a1-fd29-1b76-78c57a4e3bb8",
  "kind": "theorem",
  "lexical_name": "goldbachRationalArcRadius_add_lt_inverse_mul",
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
  "slug": "goldbachrationalarcradius-add-lt-inverse-mul--39584ce3bf1ff1ca8bfadc3b",
  "source": {
    "blob": "d92f4cfddbfef7a5784ef4bb2784477f4a272269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 222,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39584ce3bf1ff1ca8bfadc3bb54ec7933dabd43c1e26ff60b0f942bc6fd2ac61",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7da66fc3-d9a1-fd29-1b76-78c57a4e3bb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachRationalArcRadius_add_lt_inverse_mul
    {Q N q r : ℕ}
    (hq : 0 < q) (hr : 0 < r)
    (hscale : Q * (q + r) < N + 1) :
    goldbachRationalArcRadius Q N q +
        goldbachRationalArcRadius Q N r <
      1 / ((q : ℝ) * (r : ℝ)) := by
  have hqR : (0 : ℝ) < (q : ℝ) := by exact_mod_cast hq
  have hrR : (0 : ℝ) < (r : ℝ) := by exact_mod_cast hr
  have hNR : (0 : ℝ) < ((N + 1 : ℕ) : ℝ) := by positivity
  have hden :
      0 < (q : ℝ) * (r : ℝ) * ((N + 1 : ℕ) : ℝ) := by
    positivity
  have hscaleR :
      (Q : ℝ) * ((q : ℝ) + (r : ℝ)) <
        ((N + 1 : ℕ) : ℝ) := by
    exact_mod_cast hscale
  unfold goldbachRationalArcRadius
  calc
    (Q : ℝ) / ((q : ℝ) * ((N + 1 : ℕ) : ℝ)) +
          (Q : ℝ) / ((r : ℝ) * ((N + 1 : ℕ) : ℝ)) =
        ((Q : ℝ) * ((q : ℝ) + (r : ℝ))) /
          ((q : ℝ) * (r : ℝ) * ((N + 1 : ℕ) : ℝ)) := by
            field_simp [hqR.ne', hrR.ne', hNR.ne'] <;> ring
    _ < ((N + 1 : ℕ) : ℝ) /
          ((q : ℝ) * (r : ℝ) * ((N + 1 : ℕ) : ℝ)) :=
      div_lt_div_of_pos_right hscaleR hden
    _ = 1 / ((q : ℝ) * (r : ℝ)) := by
      field_simp [hqR.ne', hrR.ne', hNR.ne'] <;> ring

/-- The global scale condition implies the pair-specific radius inequality for
all indexed denominators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcSeparation.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d92f4cfddbfef7a5784ef4bb2784477f4a272269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
