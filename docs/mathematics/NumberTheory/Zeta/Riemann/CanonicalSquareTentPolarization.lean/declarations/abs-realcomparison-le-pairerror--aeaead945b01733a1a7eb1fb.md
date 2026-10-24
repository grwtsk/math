# abs_realComparison_le_pairError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f08308fc-2984-e26b-f55b-4b2960ec5af5",
  "kind": "theorem",
  "lexical_name": "abs_realComparison_le_pairError",
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
  "slug": "abs-realcomparison-le-pairerror--aeaead945b01733a1a7eb1fb",
  "source": {
    "blob": "0fced6fc958031623daec748c60b17295d92b552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 626,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeaead945b01733a1a7eb1fb1009cd0e51950cbe463f0bbda92250d802a25053",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f08308fc-2984-e26b-f55b-4b2960ec5af5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_realComparison_le_pairError {M : ℕ}
    (N : ℕ) (u v : Combination M) :
    |realTargetForm u v - realFiniteForm N u v| ≤ pairError N u v := by
  calc
    |realTargetForm u v - realFiniteForm N u v| =
        |(sourcePolarizedForm u v - finitePolarizedForm N u v).re| := by
      simp [realTargetForm, realFiniteForm, Complex.sub_re]
    _ ≤ ‖sourcePolarizedForm u v - finitePolarizedForm N u v‖ :=
      Complex.abs_re_le_norm _
    _ ≤ pairError N u v :=
      norm_source_sub_finite_le_pairError N u v

/-- The real target diagonal is nonnegative by the arithmetic source Gram. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fced6fc958031623daec748c60b17295d92b552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
