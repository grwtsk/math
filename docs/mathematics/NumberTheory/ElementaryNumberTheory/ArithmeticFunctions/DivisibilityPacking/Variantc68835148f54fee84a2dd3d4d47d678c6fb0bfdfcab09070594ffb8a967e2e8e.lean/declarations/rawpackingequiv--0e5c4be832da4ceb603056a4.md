# rawPackingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cba6beecf1f4e0788cded52928472b1e857ce6245bac9284e67009c2966257d",
  "kind": "def",
  "lexical_name": "rawPackingEquiv",
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
  "slug": "rawpackingequiv--0e5c4be832da4ceb603056a4",
  "source": {
    "blob": "b89210c715e559734dba1925ff08544d82b78544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e5c4be832da4ceb603056a4878ee8641da6ad31c6507ae6c00015a186cf8792",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cba6beecf1f4e0788cded52928472b1e857ce6245bac9284e67009c2966257d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def rawPackingEquiv (H : Finset ℤ) (y : ℕ) :
    RawPacking H y ≃ (∀ p : primeSupport y, {a : ZMod (p : ℕ) //
      a ∉ forbiddenResidues H p}) :=
  (Equiv.subtypeEquiv (residueEquiv y).toEquiv (by
    intro a
    change RawAdmissible H y a ↔ ∀ p : primeSupport y,
      residueEquiv y a p ∉ forbiddenResidues H p
    simp only [RawAdmissible, residueEquiv_apply])).trans Equiv.subtypePiEquivPi

/-- Exact CRT survivor cardinality. Zero factors and empty supports are allowed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b89210c715e559734dba1925ff08544d82b78544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
