# card_box_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5019d1a8-a014-9d3a-80a4-58ad9b676256",
  "kind": "lemma",
  "lexical_name": "card_box_succ",
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
  "slug": "card-box-succ--79f5dd5891106a672fa97d9c",
  "source": {
    "blob": "b2026d9abddd453a176f98fc59b96bd0360a2c9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 71,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f5dd5891106a672fa97d9c52c25500b274266c1344e0c98a4fb3d23945d1ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5019d1a8-a014-9d3a-80a4-58ad9b676256`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma card_box_succ (n : ℕ) :
    #(box (n + 1) : Finset (α × β)) =
      #(Icc (-n.succ : α) n.succ) * #(Icc (-n.succ : β) n.succ) -
        #(Icc (-n : α) n) * #(Icc (-n : β) n) := by
  rw [box_succ_eq_sdiff, card_sdiff (Icc_neg_mono n.le_succ), Finset.card_Icc_prod,
    Finset.card_Icc_prod]
  rfl

end Prod

/-! ### `ℤ × ℤ` -/

namespace Int
variable {x : ℤ × ℤ}

attribute [norm_cast] toNat_ofNat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Box/Variant05ee8c1920e5eddf6633ec92513062df055e8a944f974f9654f3f324928eb7c6.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2026d9abddd453a176f98fc59b96bd0360a2c9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
