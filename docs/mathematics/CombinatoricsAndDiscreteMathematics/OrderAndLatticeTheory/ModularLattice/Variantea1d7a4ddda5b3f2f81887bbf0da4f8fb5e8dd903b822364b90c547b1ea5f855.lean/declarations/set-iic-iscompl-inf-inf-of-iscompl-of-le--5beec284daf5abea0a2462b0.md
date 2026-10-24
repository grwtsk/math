# Set.Iic.isCompl_inf_inf_of_isCompl_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb96e148-6f78-9da0-ed30-dda6b19792af",
  "kind": "lemma",
  "lexical_name": "Set.Iic.isCompl_inf_inf_of_isCompl_of_le",
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
  "slug": "set-iic-iscompl-inf-inf-of-iscompl-of-le--5beec284daf5abea0a2462b0",
  "source": {
    "blob": "4add93c37918a2b4bffb2b59bc50de897cba19dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variantea1d7a4ddda5b3f2f81887bbf0da4f8fb5e8dd903b822364b90c547b1ea5f855.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5beec284daf5abea0a2462b01760893bf3d31aaeb0a84a138683b54eaf836551",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variantea1d7a4ddda5b3f2f81887bbf0da4f8fb5e8dd903b822364b90c547b1ea5f855.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb96e148-6f78-9da0-ed30-dda6b19792af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.Iic.isCompl_inf_inf_of_isCompl_of_le [Lattice α] [BoundedOrder α] [IsModularLattice α]
    {a b c : α} (h₁ : IsCompl b c) (h₂ : b ≤ a) :
    IsCompl (⟨a ⊓ b, inf_le_left⟩ : Iic a) (⟨a ⊓ c, inf_le_left⟩ : Iic a) := by
  constructor
  · simp [disjoint_iff, Subtype.ext_iff, inf_comm a c, inf_assoc a, ← inf_assoc b, h₁.inf_eq_bot]
  · simp only [Iic.codisjoint_iff, inf_comm a, IsModularLattice.inf_sup_inf_assoc]
    simp [inf_of_le_left h₂, h₁.sup_eq_top]

namespace IsModularLattice

variable [Lattice α] [IsModularLattice α] {a : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variantea1d7a4ddda5b3f2f81887bbf0da4f8fb5e8dd903b822364b90c547b1ea5f855.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ModularLattice/Variantea1d7a4ddda5b3f2f81887bbf0da4f8fb5e8dd903b822364b90c547b1ea5f855.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4add93c37918a2b4bffb2b59bc50de897cba19dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
