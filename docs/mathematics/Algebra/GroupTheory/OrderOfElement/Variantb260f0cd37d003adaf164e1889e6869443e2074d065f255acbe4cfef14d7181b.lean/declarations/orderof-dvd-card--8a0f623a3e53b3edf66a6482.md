# orderOf_dvd_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f7353fb14a00b020c854e4d8310a49bb9e95b162",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 902,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:62c18a34-65ed-bd49-290b-708978a11291",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:272240b8-bae4-01b7-3e65-5c95d63d4fb0",
  "kind": "theorem",
  "lexical_name": "orderOf_dvd_card",
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
  "slug": "orderof-dvd-card--8a0f623a3e53b3edf66a6482",
  "source": {
    "blob": "f7353fb14a00b020c854e4d8310a49bb9e95b162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 925,
    "line": 902,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a0f623a3e53b3edf66a6482687b5a3598325aa69cfe13ce8f0167e773bd557a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:272240b8-bae4-01b7-3e65-5c95d63d4fb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 902–925.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_dvd_card : orderOf x ∣ Fintype.card G := by
  classical
    have ft_prod : Fintype ((G ⧸ zpowers x) × zpowers x) :=
      Fintype.ofEquiv G groupEquivQuotientProdSubgroup
    have ft_s : Fintype (zpowers x) := @Fintype.prodRight _ _ _ ft_prod _
    have ft_cosets : Fintype (G ⧸ zpowers x) :=
      @Fintype.prodLeft _ _ _ ft_prod ⟨⟨1, (zpowers x).one_mem⟩⟩
    have eq₁ : Fintype.card G = @Fintype.card _ ft_cosets * @Fintype.card _ ft_s :=
      calc
        Fintype.card G = @Fintype.card _ ft_prod :=
          @Fintype.card_congr _ _ _ ft_prod groupEquivQuotientProdSubgroup
        _ = @Fintype.card _ (@instFintypeProd _ _ ft_cosets ft_s) :=
          congr_arg (@Fintype.card _) <| Subsingleton.elim _ _
        _ = @Fintype.card _ ft_cosets * @Fintype.card _ ft_s :=
          @Fintype.card_prod _ _ ft_cosets ft_s

    have eq₂ : orderOf x = @Fintype.card _ ft_s :=
      calc
        orderOf x = _ := Fintype.card_zpowers.symm
        _ = _ := congr_arg (@Fintype.card _) <| Subsingleton.elim _ _

    exact Dvd.intro (@Fintype.card (G ⧸ Subgroup.zpowers x) ft_cosets) (by rw [eq₁, eq₂, mul_comm])

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variantb260f0cd37d003adaf164e1889e6869443e2074d065f255acbe4cfef14d7181b.lean#L902).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7353fb14a00b020c854e4d8310a49bb9e95b162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
