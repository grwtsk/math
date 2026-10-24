# trivial_chain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8a95eb20cbade61a33f165004c34d1ce1674947",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/3458af8531decf948319517543f731dcdc2c5a7de47e9339f9a443530e60d205.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cd815ef-93ed-7f53-d04c-4e5b75cc1907",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10859e52-0e96-3510-9308-52271be9e7a4",
  "kind": "theorem",
  "lexical_name": "trivial_chain",
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
  "slug": "trivial-chain--6a1480db1793b4cc1863ea7b",
  "source": {
    "blob": "b8a95eb20cbade61a33f165004c34d1ce1674947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant3458af8531decf948319517543f731dcdc2c5a7de47e9339f9a443530e60d205.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a1480db1793b4cc1863ea7bd33b940fd9e7ca946328df404a57b1f0d5619968",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant3458af8531decf948319517543f731dcdc2c5a7de47e9339f9a443530e60d205.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10859e52-0e96-3510-9308-52271be9e7a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivial_chain (hs : ZetaSeam) (T₁ T₂ : ℝ) :
    N0simple T₁ T₂ ≤ N0star T₁ T₂ ∧ N0star T₁ T₂ ≤ N0 T₁ T₂ ∧ N0 T₁ T₂ ≤ Ncount T₁ T₂ ∧
    N0simple T₁ T₂ ≤ Nsimple T₁ T₂ ∧ Nsimple T₁ T₂ ≤ Ndist T₁ T₂ ∧ Ndist T₁ T₂ ≤ Ncount T₁ T₂ := by
  simpa using (zetaZeros hs).trivial_chain T₁ T₂

/-! ## 4. Theorems A, B, C

The headline theorems Zeta23.thmA, thmA_cumulative, thmA_lam, thmB, thmB_cumulative, thmB_lam, thmC,
thmC_cumulative, thmC_lam are proved in Zeta23/Final.lean (their types display the full trust base:
literature explicit formula, Riemann–von Mangoldt, Montgomery–Vaughan, Γ-facts), on top of the
versions Zeta23.thmA_of_traces etc. in Zeta23/Main.lean (thm:traces as an explicit hypothesis). This file
stays light (definitions + anchors) so that it can be read and imported cheaply.

Paper [thm:A], verbatim: "Let 0 < λ ≤ 1 be fixed. There are constants c(λ) > 0 and T₀(λ) such that
for all T ≥ T₀(λ)   N₀*(T,2T) ≥ (H(λ) − c(λ) loglogT/logT) N(T,2T),
and for λ < 1 the factor loglog T may be omitted. In particular
  liminf_{T→∞} N₀*(T,2T)/N(T,2T) ≥ 2/3,   liminf_{T→∞} N₀*(T)/N(T) ≥ 2/3".
Formal target: the ε-forms, for each fixed λ ∈ (0,1) with constant
H(λ) (resp. 2F(λ)−1, F(λ)), which absorb c(λ)/log T; then the 2/3 (resp. 1/2, 3/4) forms via
sup_{λ<1} H(λ) = H(1) = 2/3 etc. The effective c(λ) forms are not stated. -/

/-- The statement of Theorem A (2/3, dyadic ε-form) as a Prop, for reference; Zeta23.thmA proves it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant3458af8531decf948319517543f731dcdc2c5a7de47e9339f9a443530e60d205.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant3458af8531decf948319517543f731dcdc2c5a7de47e9339f9a443530e60d205.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8a95eb20cbade61a33f165004c34d1ce1674947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
