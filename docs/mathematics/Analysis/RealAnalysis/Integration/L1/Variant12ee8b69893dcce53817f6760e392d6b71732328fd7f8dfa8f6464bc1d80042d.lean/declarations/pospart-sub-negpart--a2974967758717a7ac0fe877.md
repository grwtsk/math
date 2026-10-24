# posPart_sub_negPart

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb9933f1-7401-61ad-f997-d9c79ae84134",
  "kind": "theorem",
  "lexical_name": "posPart_sub_negPart",
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
  "slug": "pospart-sub-negpart--a2974967758717a7ac0fe877",
  "source": {
    "blob": "a9fd6c639cc132e235aba0c557bdacaf8b478f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2974967758717a7ac0fe8776aa16876b5f86e9515c71758839e94b4103458b1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb9933f1-7401-61ad-f997-d9c79ae84134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem posPart_sub_negPart (f : α →ₛ ℝ) : f.posPart - f.negPart = f := by
  simp only [posPart, negPart]
  ext a
  rw [coe_sub]
  exact max_zero_sub_eq_self (f a)

end PosPart

section Integral

/-!
### The Bochner integral of simple functions

Define the Bochner integral of simple functions of the type `α →ₛ β` where `β` is a normed group,
and prove basic properties of this integral.
-/


open Finset

variable [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedSpace ℝ F]
  {m : MeasurableSpace α} {μ : Measure α}

/-- Bochner integral of simple functions whose codomain is a real `NormedSpace`.
This is equal to `∑ x ∈ f.range, μ.real (f ⁻¹' {x}) • x` (see `integral_eq`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/L1/Variant12ee8b69893dcce53817f6760e392d6b71732328fd7f8dfa8f6464bc1d80042d.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9fd6c639cc132e235aba0c557bdacaf8b478f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
