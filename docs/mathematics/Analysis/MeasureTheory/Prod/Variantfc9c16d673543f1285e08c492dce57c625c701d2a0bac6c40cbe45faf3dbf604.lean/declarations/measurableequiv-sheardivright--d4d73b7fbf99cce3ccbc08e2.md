# MeasurableEquiv.shearDivRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ad4cce8a7e1eef30b7ceda9af015270fc28c195bfdb6472fb99b4ad93b6ef39",
  "kind": "def",
  "lexical_name": "MeasurableEquiv.shearDivRight",
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
  "slug": "measurableequiv-sheardivright--d4d73b7fbf99cce3ccbc08e2",
  "source": {
    "blob": "6235d063a20206fcf20a4db10f60203df6b95d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 66,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4d73b7fbf99cce3ccbc08e2e8aead1a2801d4a1d9b77a7516faa164618f9c85",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ad4cce8a7e1eef30b7ceda9af015270fc28c195bfdb6472fb99b4ad93b6ef39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def MeasurableEquiv.shearDivRight [MeasurableInv G] : G × G ≃ᵐ G × G :=
  { Equiv.prodShear (Equiv.refl _) Equiv.divRight with
    measurable_toFun := measurable_fst.prod_mk <| measurable_snd.div measurable_fst
    measurable_invFun := measurable_fst.prod_mk <| measurable_snd.mul measurable_fst }
#align measurable_equiv.shear_div_right MeasurableEquiv.shearDivRight
#align measurable_equiv.shear_sub_right MeasurableEquiv.shearSubRight

variable {G}

namespace MeasureTheory

open Measure

section LeftInvariant

/-- The multiplicative shear mapping `(x, y) ↦ (x, xy)` preserves the measure `μ × ν`.
This condition is part of the definition of a measurable group in [Halmos, §59].
There, the map in this lemma is called `S`. -/
@[to_additive measurePreserving_prod_add
" The shear mapping `(x, y) ↦ (x, x + y)` preserves the measure `μ × ν`. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6235d063a20206fcf20a4db10f60203df6b95d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
