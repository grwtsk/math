# normal_iInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:893bae6230534d5bf95af52962fe9a79ee0e2c5d3acdfe7869b3db9a25707a70",
  "kind": "instance",
  "lexical_name": "normal_iInf",
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
  "slug": "normal-iinf--193458ed021a0dd6e907c62c",
  "source": {
    "blob": "0fe875fca7bc93d00c101231a39ddc8f306e9041",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 141,
    "path": "GRWTSK/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:193458ed021a0dd6e907c62c201050a59b0d8405abe77be6cea2d83ff120f18b",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:893bae6230534d5bf95af52962fe9a79ee0e2c5d3acdfe7869b3db9a25707a70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normal_iInf {ι : Type*} [hι : Nonempty ι]
    (t : ι → IntermediateField F K) [h : ∀ i, Normal F (t i)] :
    Normal F (⨅ i, t i : IntermediateField F K) := by
  refine { toIsAlgebraic := ?_, splits' := fun x => ?_ }
  · let f := inclusion (iInf_le t hι.some)
    exact Algebra.IsAlgebraic.of_injective f f.injective
  · have hx : ∀ i, Splits (algebraMap F (t i)) (minpoly F x) := by
      intro i
      rw [← minpoly.algHom_eq (inclusion (iInf_le t i)) (inclusion (iInf_le t i)).injective]
      exact (h i).splits' (inclusion (iInf_le t i) x)
    simp only [splits_iff_mem (splits_of_isScalarTower K (hx hι.some))] at hx ⊢
    rintro y hy - ⟨-, ⟨i, rfl⟩, rfl⟩
    exact hx i y hy

@[stacks 09HP]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9f0d4c6c09a4a21d154e9574b56b85e6b5816b22cbab84e27b545570f2657c81.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fe875fca7bc93d00c101231a39ddc8f306e9041` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
