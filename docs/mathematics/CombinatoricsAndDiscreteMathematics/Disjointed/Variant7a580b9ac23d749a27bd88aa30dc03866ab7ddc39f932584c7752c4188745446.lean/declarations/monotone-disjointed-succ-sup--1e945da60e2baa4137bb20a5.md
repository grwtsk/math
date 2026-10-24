# Monotone.disjointed_succ_sup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7643634-dfd7-4ce1-699d-8074344b941f",
  "kind": "lemma",
  "lexical_name": "Monotone.disjointed_succ_sup",
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
  "slug": "monotone-disjointed-succ-sup--1e945da60e2baa4137bb20a5",
  "source": {
    "blob": "91222d1811aa1d93600014b7232b14fdbb729812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 246,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e945da60e2baa4137bb20a513414bb2a18b5a39e2cbc7e4a7f98f4836404378",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7643634-dfd7-4ce1-699d-8074344b941f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monotone.disjointed_succ_sup {f : ι → α} (hf : Monotone f) (i : ι) :
    disjointed f (succ i) ⊔ f i = f (succ i) := by
  by_cases h : IsMax i
  · simpa only [succ_eq_iff_isMax.mpr h, sup_eq_right] using disjointed_le f i
  · rw [disjointed_apply]
    have : Iio (succ i) = Iic i := by
      ext
      simp only [mem_Iio, lt_succ_iff_eq_or_lt_of_not_isMax h, mem_Iic, le_iff_lt_or_eq, Or.comm]
    rw [this, ← sup'_eq_sup nonempty_Iic, ← partialSups_apply, hf.partialSups_eq,
      sdiff_sup_cancel <| hf <| le_succ i]

end SuccOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Disjointed/Variant7a580b9ac23d749a27bd88aa30dc03866ab7ddc39f932584c7752c4188745446.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91222d1811aa1d93600014b7232b14fdbb729812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
