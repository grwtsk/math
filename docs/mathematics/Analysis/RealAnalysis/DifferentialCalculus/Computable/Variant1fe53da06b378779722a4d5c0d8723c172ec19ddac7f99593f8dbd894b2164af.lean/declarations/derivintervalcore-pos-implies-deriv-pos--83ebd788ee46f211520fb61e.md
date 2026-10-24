# derivIntervalCore_pos_implies_deriv_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8ce3988-8bd3-ee6d-8eb2-4a67d51834e0",
  "kind": "theorem",
  "lexical_name": "derivIntervalCore_pos_implies_deriv_pos",
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
  "slug": "derivintervalcore-pos-implies-deriv-pos--83ebd788ee46f211520fb61e",
  "source": {
    "blob": "48946ce5b950b9ecdd33380adfc507b2693278e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 323,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83ebd788ee46f211520fb61ea272877e62ce36fbc13250e4d5d746383534d3f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8ce3988-8bd3-ee6d-8eb2-4a67d51834e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivIntervalCore_pos_implies_deriv_pos (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (cfg : EvalConfig)
    (h : 0 < (derivIntervalCore e I cfg).lo) :
    ∀ x ∈ I, 0 < deriv (evalFunc1 e) x := by
  intro x hx
  have hmem := derivIntervalCore_correct e hsupp I x hx cfg
  simp only [IntervalRat.mem_def] at hmem
  calc (0 : ℝ) < (derivIntervalCore e I cfg).lo := by exact_mod_cast h
    _ ≤ deriv (evalFunc1 e) x := hmem.1

/-- If derivIntervalCore.hi < 0, then the derivative is negative everywhere on I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Computable/Variant1fe53da06b378779722a4d5c0d8723c172ec19ddac7f99593f8dbd894b2164af.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48946ce5b950b9ecdd33380adfc507b2693278e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
