# AECover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:906b83dec027d7c3c13a1d4af140bcd62088432e20e2605ceac4de8b621107eb",
  "kind": "structure",
  "lexical_name": "AECover",
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
  "slug": "aecover--c6d48cfc744600bb0c9dbeb1",
  "source": {
    "blob": "6a4f05e3dd7c9efcde84ecdf1c67e3a6efcd9434",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 99,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6d48cfc744600bb0c9dbeb10a8451b9c578cc4c909a103f31e8d88603bdd02c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:906b83dec027d7c3c13a1d4af140bcd62088432e20e2605ceac4de8b621107eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AECover (φ : ι → Set α) : Prop where
  ae_eventually_mem : ∀ᵐ x ∂μ, ∀ᶠ i in l, x ∈ φ i
  protected measurableSet : ∀ i, MeasurableSet <| φ i
#align measure_theory.ae_cover MeasureTheory.AECover
#align measure_theory.ae_cover.ae_eventually_mem MeasureTheory.AECover.ae_eventually_mem
#align measure_theory.ae_cover.measurable MeasureTheory.AECover.measurableSet

variable {μ} {l}

namespace AECover

/-!
## Operations on `AECover`s

Porting note: this is a new section.
-/

/-- Elementwise intersection of two `AECover`s is an `AECover`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegralEqImproper/Variant440b7e24982813de94bf0b12f74cb8db0865c1d4206a1ae0328711ade0a8b050.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a4f05e3dd7c9efcde84ecdf1c67e3a6efcd9434` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
