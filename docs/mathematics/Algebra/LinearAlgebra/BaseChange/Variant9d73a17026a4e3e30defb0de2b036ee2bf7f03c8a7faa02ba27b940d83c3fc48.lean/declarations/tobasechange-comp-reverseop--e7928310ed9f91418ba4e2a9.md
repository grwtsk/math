# toBaseChange_comp_reverseOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24c69d53-78da-9c0c-443c-514971d917f9",
  "kind": "theorem",
  "lexical_name": "toBaseChange_comp_reverseOp",
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
  "slug": "tobasechange-comp-reverseop--e7928310ed9f91418ba4e2a9",
  "source": {
    "blob": "0f74634e3742f157e69e4a08645fd15fde811ceb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7928310ed9f91418ba4e2a9f37772c2a2984d40fbb23f7348eda41598eaf0f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24c69d53-78da-9c0c-443c-514971d917f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toBaseChange_comp_reverseOp (Q : QuadraticForm R V) :
    (toBaseChange A Q).op.comp reverseOp =
      ((Algebra.TensorProduct.opAlgEquiv R A A (CliffordAlgebra Q)).toAlgHom.comp <|
        (Algebra.TensorProduct.map
          (AlgEquiv.toOpposite A A).toAlgHom (reverseOp (Q := Q))).comp
        (toBaseChange A Q)) := by
  ext v
  show op (toBaseChange A Q (reverse (ι (Q.baseChange A) (1 ⊗ₜ[R] v)))) =
    Algebra.TensorProduct.opAlgEquiv R A A (CliffordAlgebra Q)
      (Algebra.TensorProduct.map (AlgEquiv.toOpposite A A).toAlgHom (reverseOp (Q := Q))
        (toBaseChange A Q (ι (Q.baseChange A) (1 ⊗ₜ[R] v))))
  rw [toBaseChange_ι, reverse_ι, toBaseChange_ι, Algebra.TensorProduct.map_tmul,
    Algebra.TensorProduct.opAlgEquiv_tmul, reverseOp_ι]
  rfl

/-- `reverse` acts only on the right of the tensor product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variant9d73a17026a4e3e30defb0de2b036ee2bf7f03c8a7faa02ba27b940d83c3fc48.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f74634e3742f157e69e4a08645fd15fde811ceb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
