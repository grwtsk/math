# orderIsoOfNonDegenerate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fa316d5aa9b0122b8580130758e815fd466432ebb87b231e8cfe0aa93955b16",
  "kind": "def",
  "lexical_name": "orderIsoOfNonDegenerate",
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
  "slug": "orderisoofnondegenerate--f99058ee75bfc057ee32e430",
  "source": {
    "blob": "c98af9d488a3f7dec6733d001c95a893c9cf82f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 664,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f99058ee75bfc057ee32e430931ad02ec22012881188d2e6662e149e40776164",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fa316d5aa9b0122b8580130758e815fd466432ebb87b231e8cfe0aa93955b16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 664–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[no_expose] noncomputable def orderIsoOfNonDegenerate
    {n d : ℕ} (x : (Δ[n] : SSet.{u}).nonDegenerate d) :
    Fin (d + 1) ≃o nonDegenerateEquiv' x where
  toEquiv := Equiv.ofBijective (fun i ↦ ⟨x.val i, Finset.mem_image_of_mem _ (by simp)⟩) (by
    constructor
    · have := (mem_nonDegenerate_iff_mono x.val).1 x.property
      rw [SimplexCategory.mono_iff_injective] at this
      exact fun _ _ h ↦ this (by simpa using h)
    · rintro ⟨j, hj⟩
      rw [nonDegenerateEquiv'_iff] at hj
      aesop)
  map_rel_iff' := by
    have := (mem_nonDegenerate_iff_mono x.val).1 x.property
    rw [SimplexCategory.mono_iff_injective] at this
    intro a b
    dsimp
    simp only [Subtype.mk_le_mk]
    constructor
    · rw [← not_lt, ← not_lt]
      intro h h'
      apply h
      obtain h'' | h'' := (monotone_apply x.val h'.le).lt_or_eq
      · assumption
      · simp only [this h'', lt_self_iff_false] at h'
    · intro h
      exact monotone_apply _ h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/StdSimplex/Variantc4fea197947b28fc9dff0d7acc93e2f3c24e91d5dbc1608731b1c0cdabd4a3da.lean#L664).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c98af9d488a3f7dec6733d001c95a893c9cf82f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
