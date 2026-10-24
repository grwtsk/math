# closed_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea5cf6cb-6297-c822-a715-11ad91da2d0f",
  "kind": "lemma",
  "lexical_name": "closed_interval",
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
  "slug": "closed-interval--5cb1008bb230f5f3e3926cfc",
  "source": {
    "blob": "148a18cc31f7547b2aac0a6b5873ef21fd2e8e11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cb1008bb230f5f3e3926cfc362a386a0c2ddeb069181a5d8d6c8305831fe9df",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea5cf6cb-6297-c822-a715-11ad91da2d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma closed_interval {r : α → α → Prop}
    (h₂ : ∀ ⦃x y : α⦄, r x y ↔ r (x ⊓ y) (x ⊔ y))
    (h₄ : ∀ ⦃x y t : α⦄, x ≤ y → r x y → r (x ⊓ t) (y ⊓ t) ∧ r (x ⊔ t) (y ⊔ t))
    (a b c d : α) (hab : a ≤ b) (hbd : b ≤ d) (hac : a ≤ c) (hcd : c ≤ d) (had : r a d) :
    r b c := by
  suffices r (b ⊓ c ⊓ (b ⊔ c)) (d ⊓ (b ⊔ c)) by
    simpa [h₂, inf_eq_right.mpr (sup_le hbd hcd)] using this
  apply (h₄ (inf_le_of_left_le hbd) _).1
  simpa [sup_eq_right.mpr (le_inf hab hac), sup_eq_left.mpr (inf_le_of_left_le hbd)] using
    ((h₄ (le_trans hab hbd) had).2 : r (a ⊔ b ⊓ c) (d ⊔ b ⊓ c))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Congruence/Variant427ba1dcba84646452d3f1f8b84fb6e19c3e7c2599d79e367800ae4743517563.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148a18cc31f7547b2aac0a6b5873ef21fd2e8e11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
