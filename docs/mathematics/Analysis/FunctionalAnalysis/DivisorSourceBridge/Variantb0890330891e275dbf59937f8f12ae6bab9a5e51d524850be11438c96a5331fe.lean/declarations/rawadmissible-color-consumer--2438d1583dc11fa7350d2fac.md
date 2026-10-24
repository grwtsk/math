# rawAdmissible_color_consumer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:743031aa-79e1-b6d0-f7af-08f5c30aa485",
  "kind": "theorem",
  "lexical_name": "rawAdmissible_color_consumer",
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
  "slug": "rawadmissible-color-consumer--2438d1583dc11fa7350d2fac",
  "source": {
    "blob": "31892397b4f508e0e077c8704f7ecf21c2a4811e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 129,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2438d1583dc11fa7350d2fac88cac12834566291d37e694842204e55a04ab60a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:743031aa-79e1-b6d0-f7af-08f5c30aa485`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawAdmissible_color_consumer (H : Finset ℤ) (y : ℕ)
    (a : ZMod (DivisibilityPacking.Modulus y)) :
    DivisibilityPacking.RawAdmissible H y a ↔ ∀ p : DivisibilityPacking.primeSupport y, ∀ h ∈ H,
      ¬cyclicColor (a + (h : ZMod (DivisibilityPacking.Modulus y))) 0 ≤
        packingKernelDivisor y p := by
  exact forall_congr' fun p => packing_forbidden_threshold H y p a

/-- The existing local CRT arithmetic predicate is preserved by the representation view. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31892397b4f508e0e077c8704f7ecf21c2a4811e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
