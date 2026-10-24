# SurjectiveOnStalks.of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89cf55f0-1f15-37ea-4c86-70203e026714",
  "kind": "lemma",
  "lexical_name": "SurjectiveOnStalks.of_comp",
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
  "slug": "surjectiveonstalks-of-comp--048236f254110d61b58f62f4",
  "source": {
    "blob": "a52cb1e1a4d7623a21c0012066e90a700a03e934",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 113,
    "path": "GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:048236f254110d61b58f62f4c1f424dd845e89c0c4f1b9179e75b4158b07c4b2",
  "verification": {
    "reference": "docs/verification/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89cf55f0-1f15-37ea-4c86-70203e026714`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma SurjectiveOnStalks.of_comp (hg : SurjectiveOnStalks (g.comp f)) :
    SurjectiveOnStalks g := by
  intros I hI
  have := hg I hI
  rw [Localization.localRingHom_comp (I.comap (g.comp f)) (I.comap g) _ _ rfl _ rfl,
    RingHom.coe_comp] at this
  exact this.of_comp


open TensorProduct

variable [Algebra R T] [Algebra R S] in
/--
If `R → T` is surjective on stalks, and `J` is some prime of `T`,
then every element `x` in `S ⊗[R] T` satisfies `(1 ⊗ r • t) * x = a ⊗ t` for some
`r : R`, `a : S`, and `t : T` such that `r • t ∉ J`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SurjectiveOnStalks/Variantedf80480a298f69be52c5151d31f56b4846d7bc7e69933c0c87df8963a22f760.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52cb1e1a4d7623a21c0012066e90a700a03e934` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
