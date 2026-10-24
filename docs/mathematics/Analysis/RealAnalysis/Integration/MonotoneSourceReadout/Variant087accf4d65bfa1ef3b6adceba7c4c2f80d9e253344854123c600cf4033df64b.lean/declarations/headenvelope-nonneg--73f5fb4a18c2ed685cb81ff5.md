# headEnvelope_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81258868-73ba-2087-e9e8-b0c0a27a3f3a",
  "kind": "theorem",
  "lexical_name": "headEnvelope_nonneg",
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
  "slug": "headenvelope-nonneg--73f5fb4a18c2ed685cb81ff5",
  "source": {
    "blob": "215116a4f085f8f2ac0371fd10ed775ab0e1312c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73f5fb4a18c2ed685cb81ff5ff8831232730b88b57a25303904399a70dea6b46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81258868-73ba-2087-e9e8-b0c0a27a3f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem headEnvelope_nonneg (t : ℝ) : 0 ≤ headEnvelope t := by
  unfold headEnvelope
  exact add_nonneg (Real.exp_pos _).le
    (mul_nonneg (div_nonneg amplitude_pos.le (by norm_num)) (Real.exp_pos _).le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Variant087accf4d65bfa1ef3b6adceba7c4c2f80d9e253344854123c600cf4033df64b.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `215116a4f085f8f2ac0371fd10ed775ab0e1312c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
