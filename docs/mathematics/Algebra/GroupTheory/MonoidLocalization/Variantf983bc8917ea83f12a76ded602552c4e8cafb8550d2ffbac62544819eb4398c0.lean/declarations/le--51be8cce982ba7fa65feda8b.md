# le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0db8e796f8ed52b1aee9a5482ab39ecf40fe9031f1c96ae552475f6ad722df53",
  "kind": "instance",
  "lexical_name": "le",
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
  "slug": "le--51be8cce982ba7fa65feda8b",
  "source": {
    "blob": "eb088e6a9653d1084284a08cee3570c313548705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1930,
    "line": 1918,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:51be8cce982ba7fa65feda8b9d7f20755b9ecf35c5c2f83e35c6a570fba86969",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0db8e796f8ed52b1aee9a5482ab39ecf40fe9031f1c96ae552475f6ad722df53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1918–1930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance le : LE (Localization s) :=
  ⟨fun a b =>
    Localization.liftOn₂ a b (fun a₁ a₂ b₁ b₂ => ↑b₂ * a₁ ≤ a₂ * b₁)
      @fun a₁ b₁ a₂ b₂ c₁ d₁ c₂ d₂ hab hcd => propext $ by
        obtain ⟨e, he⟩ := r_iff_exists.1 hab
        obtain ⟨f, hf⟩ := r_iff_exists.1 hcd
        simp only [mul_right_inj] at he hf
        dsimp
        rw [← mul_le_mul_iff_right, mul_right_comm, ← hf, mul_right_comm, mul_right_comm (a₂ : α),
          mul_le_mul_iff_right, ← mul_le_mul_iff_left, mul_left_comm, he, mul_left_comm,
          mul_left_comm (b₂ : α), mul_le_mul_iff_left]⟩

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantf983bc8917ea83f12a76ded602552c4e8cafb8550d2ffbac62544819eb4398c0.lean#L1918).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb088e6a9653d1084284a08cee3570c313548705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
