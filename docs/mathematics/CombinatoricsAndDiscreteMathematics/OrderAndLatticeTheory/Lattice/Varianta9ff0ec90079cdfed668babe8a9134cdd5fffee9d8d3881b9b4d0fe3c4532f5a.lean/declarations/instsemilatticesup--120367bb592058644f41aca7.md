# instSemilatticeSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41ddbe2f4f1628709ae49253bbebc13381e8e58e59633b3861c35611c1921c9b",
  "kind": "instance",
  "lexical_name": "instSemilatticeSup",
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
  "slug": "instsemilatticesup--120367bb592058644f41aca7",
  "source": {
    "blob": "d309ed98f1a31daf0bedf6d3a0fe82075d68cd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianta9ff0ec90079cdfed668babe8a9134cdd5fffee9d8d3881b9b4d0fe3c4532f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:120367bb592058644f41aca72748e703d9f5ecc5b0002d29fb3948fe91393aaf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianta9ff0ec90079cdfed668babe8a9134cdd5fffee9d8d3881b9b4d0fe3c4532f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41ddbe2f4f1628709ae49253bbebc13381e8e58e59633b3861c35611c1921c9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSemilatticeSup : SemilatticeSup (α ⊕ₗ β) where
  sup
    | inlₗ a₁, inlₗ a₂ => inl (a₁ ⊔ a₂)
    | inlₗ a₁, inrₗ b₂ => inr b₂
    | inrₗ b₁, inlₗ a₂ => inr b₁
    | inrₗ b₁, inrₗ b₂ => inr (b₁ ⊔ b₂)
  le_sup_left
    | inlₗ a₁, inlₗ a₂ => inl_le_inl_iff.2 le_sup_left
    | inlₗ a₁, inrₗ b₂ => inl_le_inr _ _
    | inrₗ b₁, inlₗ a₂ => le_rfl
    | inrₗ b₁, inrₗ b₂ => inr_le_inr_iff.2 le_sup_left
  le_sup_right
    | inlₗ a₁, inlₗ a₂ => inl_le_inl_iff.2 le_sup_right
    | inlₗ a₁, inrₗ b₂ => le_rfl
    | inrₗ b₁, inlₗ a₂ => inl_le_inr _ _
    | inrₗ b₁, inrₗ b₂ => inr_le_inr_iff.2 le_sup_right
  sup_le
    | inlₗ a₁, inlₗ a₂, inlₗ a₃, Lex.inl h₁₃, Lex.inl h₂₃ => inl_le_inl_iff.2 <| sup_le h₁₃ h₂₃
    | inlₗ a₁, inlₗ a₂, inrₗ b₃, Lex.sep _ _, Lex.sep _ _ => Lex.sep _ _
    | inlₗ a₁, inrₗ b₂, inrₗ b₃, Lex.sep _ _, Lex.inr h₂₃ => inr_le_inr_iff.2 h₂₃
    | inrₗ b₁, inlₗ a₂, inrₗ b₃, Lex.inr h₁₃, Lex.sep _ _ => inr_le_inr_iff.2 h₁₃
    | inrₗ b₁, inrₗ b₂, inrₗ b₃, Lex.inr h₁₃, Lex.inr h₂₃ => inr_le_inr_iff.2 <| sup_le h₁₃ h₂₃

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianta9ff0ec90079cdfed668babe8a9134cdd5fffee9d8d3881b9b4d0fe3c4532f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Varianta9ff0ec90079cdfed668babe8a9134cdd5fffee9d8d3881b9b4d0fe3c4532f5a.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d309ed98f1a31daf0bedf6d3a0fe82075d68cd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
