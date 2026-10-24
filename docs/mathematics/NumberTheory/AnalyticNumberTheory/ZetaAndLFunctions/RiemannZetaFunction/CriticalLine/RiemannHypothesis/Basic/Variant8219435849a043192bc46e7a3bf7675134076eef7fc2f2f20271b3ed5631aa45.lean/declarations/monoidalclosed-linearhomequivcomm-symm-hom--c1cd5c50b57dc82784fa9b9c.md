# MonoidalClosed.linearHomEquivComm_symm_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:368b5a8e-7da0-a929-a6dd-44d2cc152d6b",
  "kind": "theorem",
  "lexical_name": "MonoidalClosed.linearHomEquivComm_symm_hom",
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
  "slug": "monoidalclosed-linearhomequivcomm-symm-hom--c1cd5c50b57dc82784fa9b9c",
  "source": {
    "blob": "f305c8e3426e8512d3ab6b9cf6cbcfc3f9385854",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 873,
    "line": 861,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant8219435849a043192bc46e7a3bf7675134076eef7fc2f2f20271b3ed5631aa45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1cd5c50b57dc82784fa9b9c71f09510714914df0ef84f58bc400ea555d85140",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant8219435849a043192bc46e7a3bf7675134076eef7fc2f2f20271b3ed5631aa45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:368b5a8e-7da0-a929-a6dd-44d2cc152d6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–873.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MonoidalClosed.linearHomEquivComm_symm_hom (A B C : Rep.{u} k G) (f : A ⟶ B ⟶[Rep k G] C) :
    ((MonoidalClosed.linearHomEquivComm A B C).symm f).hom.toLinearMap =
      TensorProduct.uncurry (.id k) A B C f.hom.toLinearMap :=
  TensorProduct.ext' fun _ _ => rfl

end MonoidalClosed

section

variable {k : Type u} [Semiring k] {G : Type v} [Group G] [Fintype G] (A : Rep.{w} k G)

/-- Given a representation `A` of a finite group `G`, `norm A` is the representation morphism
`A ⟶ A` defined by `x ↦ ∑ A.ρ g x` for `g` in `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant8219435849a043192bc46e7a3bf7675134076eef7fc2f2f20271b3ed5631aa45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Basic/Variant8219435849a043192bc46e7a3bf7675134076eef7fc2f2f20271b3ed5631aa45.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f305c8e3426e8512d3ab6b9cf6cbcfc3f9385854` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
