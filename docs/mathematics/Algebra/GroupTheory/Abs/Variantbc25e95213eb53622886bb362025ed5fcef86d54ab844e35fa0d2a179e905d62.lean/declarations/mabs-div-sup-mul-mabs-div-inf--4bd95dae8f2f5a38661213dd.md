# mabs_div_sup_mul_mabs_div_inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:155c26e8-ff6f-9b04-e8ec-11d5f759cec7",
  "kind": "lemma",
  "lexical_name": "mabs_div_sup_mul_mabs_div_inf",
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
  "slug": "mabs-div-sup-mul-mabs-div-inf--4bd95dae8f2f5a38661213dd",
  "source": {
    "blob": "d34a1b16aa34ad61d8e5d1338243f20d42e45a2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 162,
    "path": "GRWTSK/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bd95dae8f2f5a38661213dd649fca947d58a24e35c7ef06a1e7c0d72222f976",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:155c26e8-ff6f-9b04-e8ec-11d5f759cec7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mabs_div_sup_mul_mabs_div_inf (a b c : α) :
    |(a ⊔ c) / (b ⊔ c)|ₘ * |(a ⊓ c) / (b ⊓ c)|ₘ = |a / b|ₘ := by
  letI : DistribLattice α := CommGroup.toDistribLattice α
  calc
    |(a ⊔ c) / (b ⊔ c)|ₘ * |(a ⊓ c) / (b ⊓ c)|ₘ =
        (b ⊔ c ⊔ (a ⊔ c)) / ((b ⊔ c) ⊓ (a ⊔ c)) * |(a ⊓ c) / (b ⊓ c)|ₘ := by
        rw [sup_div_inf_eq_mabs_div]
    _ = (b ⊔ c ⊔ (a ⊔ c)) / ((b ⊔ c) ⊓ (a ⊔ c)) * ((b ⊓ c ⊔ a ⊓ c) / (b ⊓ c ⊓ (a ⊓ c))) := by
        rw [sup_div_inf_eq_mabs_div (b ⊓ c) (a ⊓ c)]
    _ = (b ⊔ a ⊔ c) / (b ⊓ a ⊔ c) * (((b ⊔ a) ⊓ c) / (b ⊓ a ⊓ c)) := by
        rw [← sup_inf_right, ← inf_sup_right, sup_assoc, sup_comm c (a ⊔ c), sup_right_idem,
          sup_assoc, inf_assoc, inf_comm c (a ⊓ c), inf_right_idem, inf_assoc]
    _ = (b ⊔ a ⊔ c) * ((b ⊔ a) ⊓ c) / ((b ⊓ a ⊔ c) * (b ⊓ a ⊓ c)) := by rw [div_mul_div_comm]
    _ = (b ⊔ a) * c / ((b ⊓ a) * c) := by
        rw [mul_comm, inf_mul_sup, mul_comm (b ⊓ a ⊔ c), inf_mul_sup]
    _ = (b ⊔ a) / (b ⊓ a) := by
        rw [div_eq_mul_inv, mul_inv_rev, mul_assoc, mul_inv_cancel_left, ← div_eq_mul_inv]
    _ = |a / b|ₘ := by rw [sup_div_inf_eq_mabs_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abs/Variantbc25e95213eb53622886bb362025ed5fcef86d54ab844e35fa0d2a179e905d62.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d34a1b16aa34ad61d8e5d1338243f20d42e45a2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
