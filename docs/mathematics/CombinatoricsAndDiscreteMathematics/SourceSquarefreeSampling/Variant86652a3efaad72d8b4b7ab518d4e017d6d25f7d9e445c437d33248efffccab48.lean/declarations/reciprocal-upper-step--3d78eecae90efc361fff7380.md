# reciprocal_upper_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8def0f5c-21fa-5eb8-b321-60c33b4bb74c",
  "kind": "theorem",
  "lexical_name": "reciprocal_upper_step",
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
  "slug": "reciprocal-upper-step--3d78eecae90efc361fff7380",
  "source": {
    "blob": "5388826d5112797c622ec2c364ba65acc3289eba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d78eecae90efc361fff7380f2479b03aba325f8b19899e34356fa28e30bc49a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8def0f5c-21fa-5eb8-b321-60c33b4bb74c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem reciprocal_upper_step (n : Nat) :
    1 / Real.sqrt ((n + 1 : Nat) : Real) <=
      2 * (Real.sqrt ((n + 1 : Nat) : Real) - Real.sqrt (n : Real)) := by
  have hn : (0 : Real) <= n := Nat.cast_nonneg n
  have hp : (0 : Real) < ((n + 1 : Nat) : Real) := by positivity
  have hs := Real.sq_sqrt hn
  have ht := Real.sq_sqrt hp.le
  have hm := Real.sqrt_le_sqrt (show (n : Real) <= ((n + 1 : Nat) : Real) by norm_num)
  have hpos := Real.sqrt_pos.2 hp
  apply (div_le_iff₀ hpos).2
  norm_num only [Nat.cast_add, Nat.cast_one] at *
  nlinarith [sq_nonneg (Real.sqrt ((n : Real) + 1) - Real.sqrt (n : Real))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeSampling/Variant86652a3efaad72d8b4b7ab518d4e017d6d25f7d9e445c437d33248efffccab48.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5388826d5112797c622ec2c364ba65acc3289eba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
