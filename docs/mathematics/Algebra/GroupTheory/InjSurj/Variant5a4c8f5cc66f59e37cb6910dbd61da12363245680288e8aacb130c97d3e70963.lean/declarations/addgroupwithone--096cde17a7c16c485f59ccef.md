# addGroupWithOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e40b93921afa7896637e8c9f9c543572a5c9de2f6516143f6c9ecc79db9cf76b",
  "kind": "def",
  "lexical_name": "addGroupWithOne",
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
  "slug": "addgroupwithone--096cde17a7c16c485f59ccef",
  "source": {
    "blob": "9b195f0645776128c58669d3e3b0a2b078f0e817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 324,
    "path": "GRWTSK/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:096cde17a7c16c485f59ccef5d7026ff8508e1d22b5c5fbe6548dd280a7cc30b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e40b93921afa7896637e8c9f9c543572a5c9de2f6516143f6c9ecc79db9cf76b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def addGroupWithOne {M₁} [Zero M₁] [One M₁] [Add M₁] [SMul ℕ M₁] [Neg M₁] [Sub M₁]
    [SMul ℤ M₁] [NatCast M₁] [IntCast M₁] [AddGroupWithOne M₂] (f : M₁ → M₂) (hf : Injective f)
    (zero : f 0 = 0) (one : f 1 = 1) (add : ∀ x y, f (x + y) = f x + f y) (neg : ∀ x, f (-x) = -f x)
    (sub : ∀ x y, f (x - y) = f x - f y) (nsmul : ∀ (x) (n : ℕ), f (n • x) = n • f x)
    (zsmul : ∀ (x) (n : ℤ), f (n • x) = n • f x) (nat_cast : ∀ n : ℕ, f n = n)
    (int_cast : ∀ n : ℤ, f n = n) : AddGroupWithOne M₁ :=
  { hf.addGroup f zero add neg sub nsmul zsmul,
    hf.addMonoidWithOne f zero one add nsmul nat_cast with
    intCast := Int.cast,
    intCast_ofNat := fun n => hf (by rw [nat_cast, ←Int.cast, int_cast, Int.cast_ofNat]),
    intCast_negSucc := fun n => hf (by erw [int_cast, neg, nat_cast, Int.cast_negSucc] ) }
#align function.injective.add_group_with_one Function.Injective.addGroupWithOne

/-- A type endowed with `1`, `*` and `⁻¹` is a commutative group, if it admits an injective map that
preserves `1`, `*` and `⁻¹` to a commutative group. See note [reducible non-instances]. -/
@[to_additive (attr := reducible)
"A type endowed with `0` and `+` is an additive commutative group, if it
admits an injective map that preserves `0` and `+` to an additive commutative group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InjSurj/Variant5a4c8f5cc66f59e37cb6910dbd61da12363245680288e8aacb130c97d3e70963.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b195f0645776128c58669d3e3b0a2b078f0e817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
