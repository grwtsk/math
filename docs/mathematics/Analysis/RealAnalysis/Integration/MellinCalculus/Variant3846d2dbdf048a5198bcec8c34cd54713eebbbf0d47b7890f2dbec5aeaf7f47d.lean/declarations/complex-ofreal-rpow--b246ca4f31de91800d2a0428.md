# Complex.ofReal_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6df77a78-7808-27cd-a164-5c128f0f0154",
  "kind": "theorem",
  "lexical_name": "Complex.ofReal_rpow",
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
  "slug": "complex-ofreal-rpow--b246ca4f31de91800d2a0428",
  "source": {
    "blob": "57ff0ec1a5d72f2045d3e6c141a3287e476528ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b246ca4f31de91800d2a0428ba4b029c1f3dccb0815f25169d02b7eb92194815",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6df77a78-7808-27cd-a164-5c128f0f0154`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.ofReal_rpow {x : ℝ} (h : x > 0) (y : ℝ) :
    (((x : ℝ) ^ (y : ℝ)) : ℝ) = (x : ℂ) ^ (y : ℂ) := by
  rw [rpow_def_of_pos h, ofReal_exp, ofReal_mul, Complex.ofReal_log h.le,
    Complex.cpow_def_of_ne_zero]
  simp only [ne_eq, ofReal_eq_zero, ne_of_gt h, not_false_eq_true]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MellinCalculus/Variant3846d2dbdf048a5198bcec8c34cd54713eebbbf0d47b7890f2dbec5aeaf7f47d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ff0ec1a5d72f2045d3e6c141a3287e476528ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
