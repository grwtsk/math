# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:785005bdb547bf3a154c30d2ea28a6b7c04b4fb4ec9d30c60378465416f84c19",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--14989bde3eb9af46e15cec91",
  "source": {
    "blob": "8b086f9d4dd5cb3abca3e6a7ad77920779072a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OddUpperRowDyadicSourceStatements/Variant61a2375d80e87d1ca50af0b3b5feee467be438a4ce0a506291e5e8e94cc9b7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14989bde3eb9af46e15cec91c104f16671fcabb5c051ac3ea28e3a60f3f188aa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OddUpperRowDyadicSourceStatements/Variant61a2375d80e87d1ca50af0b3b5feee467be438a4ce0a506291e5e8e94cc9b7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:785005bdb547bf3a154c30d2ea28a6b7c04b4fb4ec9d30c60378465416f84c19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (A : ℝ) (i : ℕ) (hA : 1 ≤ A)
    (hi : ⌊Real.exp A⌋₊/2 < i) :
    (∑ j ∈ (Ioc (⌊Real.exp A⌋₊/2) ⌊Real.exp A⌋₊).filter (fun j ↦ Nat.Coprime j 2),
      (ArithmeticFunction.moebius j : ℝ)*SourceSampling.sourceSamplingKernel A ((i*j:ℕ):ℝ)) =
      (∑ k ∈ range (Nat.clog 2 ⌈Real.exp (2*A)⌉₊),
        SourceSampling.sourceSamplingKernel A ((2^k*i:ℕ):ℝ)) -
      ∑ j ∈ (Icc 1 (⌊Real.exp A⌋₊/2)).filter (fun j ↦ Nat.Coprime j 2),
        (ArithmeticFunction.moebius j : ℝ)*ThetaKernelTransport.thetaKernel A (i*j) :=
  FormalResearch.RiemannHypothesis.SourceComparison.OddUpperRowDyadic.full_odd_upper_row_eq A i hA hi

end
end OddUpperRowDyadicSourceStatements
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OddUpperRowDyadicSourceStatements/Variant61a2375d80e87d1ca50af0b3b5feee467be438a4ce0a506291e5e8e94cc9b7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/OddUpperRowDyadicSourceStatements/Variant61a2375d80e87d1ca50af0b3b5feee467be438a4ce0a506291e5e8e94cc9b7df.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b086f9d4dd5cb3abca3e6a7ad77920779072a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
