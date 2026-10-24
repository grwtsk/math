# seed_refines

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99ce3862-06d7-dccd-81c9-574ed1135fd1",
  "kind": "theorem",
  "lexical_name": "seed_refines",
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
  "slug": "seed-refines--da72e1f73fde0830bbd42511",
  "source": {
    "blob": "a378784662cc5a7e93ae72dc96d99407338c42ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 92,
    "path": "GRWTSK/Analysis/Complex/IntegerDyadicTrace.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da72e1f73fde0830bbd42511648bb8cdd5e601f6edb55e8c9ce273f63958782c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99ce3862-06d7-dccd-81c9-574ed1135fd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seed_refines (bits : ℕ) (seed : QComplex) (initial : ℚ) (a : GridState)
    (h : SeedValid bits seed initial a) : initialState bits seed initial = decode bits a := by
  have hr := Int.floor_eq_iff.mpr h.2.2.1
  have hi := Int.floor_eq_iff.mpr h.2.2.2.1
  have he : ⌊scaleQ bits * (-(initial + roundoffQ bits))⌋ = -a.errorPart := by
    rw [mul_neg]
    apply Int.floor_eq_iff.mpr
    simp only [Int.cast_neg]
    constructor <;> linarith [h.2.2.2.2.1, h.2.2.2.2.2]
  simp only [initialState, quantizeQ, downQ, upQ, decode, hr, hi, he,
    Int.cast_neg, neg_div, neg_neg]

/-- The three scaled rational expressions reduce to precisely these integer numerators. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/IntegerDyadicTrace.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/IntegerDyadicTrace.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a378784662cc5a7e93ae72dc96d99407338c42ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
