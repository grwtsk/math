# formLE_congruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6808c77a-f53e-a09a-cda8-7c1a85055b46",
  "kind": "theorem",
  "lexical_name": "formLE_congruence",
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
  "slug": "formle-congruence--e7420929c237b44e5d2035f1",
  "source": {
    "blob": "04e34faf40a833efc0e90b332f6b545f88d5459f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7420929c237b44e5d2035f103e32a3ad38c9e8ddfaa3c19a7b92976bdd54230",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6808c77a-f53e-a09a-cda8-7c1a85055b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem formLE_congruence {P Q : Matrix n n ℂ} (h : FormLE P Q)
    (K : Matrix n m ℂ) : FormLE (Kᴴ * P * K) (Kᴴ * Q * K) := by
  intro w
  simpa only [quadraticReadout_congruence] using h (K *ᵥ w)

end ComplexForms

section ChartCovariance

variable {n m : Type*} [Fintype n] [Fintype m] [DecidableEq n] [DecidableEq m]

/-- The moving-chart derivative of inverse-congruence storage.
`D` is T-dot and `K` is T-inverse. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04e34faf40a833efc0e90b332f6b545f88d5459f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
