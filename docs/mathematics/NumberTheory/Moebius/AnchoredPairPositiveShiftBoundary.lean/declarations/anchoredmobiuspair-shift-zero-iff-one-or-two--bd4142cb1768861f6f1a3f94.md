# anchoredMobiusPair_shift_zero_iff_one_or_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:148f7cf7-413a-35d1-9b01-fdd7a0616f59",
  "kind": "theorem",
  "lexical_name": "anchoredMobiusPair_shift_zero_iff_one_or_two",
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
  "slug": "anchoredmobiuspair-shift-zero-iff-one-or-two--bd4142cb1768861f6f1a3f94",
  "source": {
    "blob": "af3348cd0f04b43b0c57dab364efcdac95be9c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd4142cb1768861f6f1a3f9403cffe61e253520596bf512a4f84d92fa61c69e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:148f7cf7-413a-35d1-9b01-fdd7a0616f59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem anchoredMobiusPair_shift_zero_iff_one_or_two
    {a : ℕ} (ha : 0 < a) :
    (anchoredMobiusPair a).h = 0 ↔ a = 1 ∨ a = 2 := by
  constructor
  · intro hz
    have hnot : ¬ 3 ≤ a := by
      intro hge
      have hpos :=
        (anchoredMobiusPair_shift_pos_iff_ge_three ha).2 hge
      omega
    omega
  · rintro (rfl | rfl) <;>
      norm_num [anchoredMobiusPair]

/-- The part of the PRE-EXISTING finite divisor transform whose actual
anchored source factors have positive shift, with no positivity of
coefficients or induced form claimed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/AnchoredPairPositiveShiftBoundary.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3348cd0f04b43b0c57dab364efcdac95be9c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
