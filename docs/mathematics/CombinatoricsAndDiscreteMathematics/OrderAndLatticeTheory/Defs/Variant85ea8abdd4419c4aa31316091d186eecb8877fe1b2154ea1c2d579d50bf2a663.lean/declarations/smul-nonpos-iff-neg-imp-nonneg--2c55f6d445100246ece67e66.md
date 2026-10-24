# smul_nonpos_iff_neg_imp_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25ab168c-6375-fd6a-a2b3-0924e2ccda5f",
  "kind": "lemma",
  "lexical_name": "smul_nonpos_iff_neg_imp_nonneg",
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
  "slug": "smul-nonpos-iff-neg-imp-nonneg--2c55f6d445100246ece67e66",
  "source": {
    "blob": "b03cf7f113b73ed238798c1a630f6b44cf1de1e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1171,
    "line": 1161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c55f6d445100246ece67e66d73fb0eacf5e7c4e977c9a80b7000ad65249f0a7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25ab168c-6375-fd6a-a2b3-0924e2ccda5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1161–1171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma smul_nonpos_iff_neg_imp_nonneg : a • b ≤ 0 ↔ (a < 0 → 0 ≤ b) ∧ (0 < b → a ≤ 0) := by
  rw [← neg_nonneg, ← neg_smul, smul_nonneg_iff_pos_imp_nonneg]; simp only [neg_pos, neg_nonneg]

end LinearOrderedRing

namespace Prod
variable {γ : Type*} [Zero α]

section SMul
variable [Preorder α] [Preorder β] [Preorder γ] [SMul α β] [SMul α γ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant85ea8abdd4419c4aa31316091d186eecb8877fe1b2154ea1c2d579d50bf2a663.lean#L1161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b03cf7f113b73ed238798c1a630f6b44cf1de1e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
