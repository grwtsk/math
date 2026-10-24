# packing_forbidden_threshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:618dd26a-fa60-f2ab-966d-12e557f9f444",
  "kind": "theorem",
  "lexical_name": "packing_forbidden_threshold",
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
  "slug": "packing-forbidden-threshold--d6cfd740c34243e41620571f",
  "source": {
    "blob": "31892397b4f508e0e077c8704f7ecf21c2a4811e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 108,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6cfd740c34243e41620571fd67537708f44b0ffa392f5c2378c5795acc66a99",
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

Occurrence: `result:618dd26a-fa60-f2ab-966d-12e557f9f444`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packing_forbidden_threshold (H : Finset ℤ) (y : ℕ) (p : DivisibilityPacking.primeSupport y)
    (a : ZMod (DivisibilityPacking.Modulus y)) :
    DivisibilityPacking.localReduction y p a ∉ DivisibilityPacking.forbiddenResidues H p ↔
      ∀ h ∈ H, ¬cyclicColor (a + (h : ZMod (DivisibilityPacking.Modulus y))) 0 ≤
        packingKernelDivisor y p := by
  classical
  simp only [DivisibilityPacking.forbiddenResidues, Finset.mem_image, not_exists, not_and]
  apply forall_congr'
  intro h
  apply imp_congr_right
  intro _
  rw [← packing_reduction_threshold]
  simp only [map_add, map_intCast]
  apply not_congr
  constructor
  · intro he
    exact eq_neg_iff_add_eq_zero.mp he.symm
  · intro hz
    exact (eq_neg_iff_add_eq_zero.mpr hz).symm

/-- The actual source wheel predicate is the conjunction of these exact color exclusions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/DivisorSourceBridge/Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31892397b4f508e0e077c8704f7ecf21c2a4811e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
