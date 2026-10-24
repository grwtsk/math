# sum_Ico_strict_eq_sum_if

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7928d610-2c24-fcbb-2f0a-42121e864044",
  "kind": "theorem",
  "lexical_name": "sum_Ico_strict_eq_sum_if",
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
  "slug": "sum-ico-strict-eq-sum-if--52a9110983d390d0d3e7c10e",
  "source": {
    "blob": "d38b6d53b279195f6132e0725bbf909f58962a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 211,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52a9110983d390d0d3e7c10e2668e5b078295ac6453e1ee523f2cf293ec09414",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7928d610-2c24-fcbb-2f0a-42121e864044`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_Ico_strict_eq_sum_if
    {Y b : ℕ} (hb : b < Y) (F : ℕ → ℝ) :
    (∑ h ∈ Finset.Ico 1 b, F h) =
      ∑ h ∈ Finset.Ico 1 Y, if h < b then F h else 0 := by
  rw [← Finset.sum_filter]
  congr 1
  ext h
  simp only [Finset.mem_Ico, Finset.mem_filter]
  omega

/-- Grouping the strict pairs by their positive lag preserves the complete
signed packet. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38b6d53b279195f6132e0725bbf909f58962a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
