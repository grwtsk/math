# WithTop.WithBot.completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:11bbb0629d7fe574cc745e768df030c0955d1a5d0cacfcf7cc596192bfe70ccd",
  "kind": "instance",
  "lexical_name": "WithTop.WithBot.completeLattice",
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
  "slug": "withtop-withbot-completelattice--085894d3be7474296d82cd5d",
  "source": {
    "blob": "5a5c107b2de7a74cce403dbaa08551ee6a860495",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 944,
    "line": 920,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:085894d3be7474296d82cd5d3aced9ce787169a82d04c16de3ab2a75a1dad7be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:11bbb0629d7fe574cc745e768df030c0955d1a5d0cacfcf7cc596192bfe70ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 920–944.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance WithTop.WithBot.completeLattice {α : Type*}
    [ConditionallyCompleteLattice α] : CompleteLattice (WithTop (WithBot α)) :=
  { instInfSet, instSupSet, boundedOrder, lattice with
    le_sSup := fun _ a haS => (WithTop.isLUB_sSup' ⟨a, haS⟩).1 haS
    sSup_le := fun S a ha => by
      rcases S.eq_empty_or_nonempty with h | h
      · show ite _ _ _ ≤ a
        simp [h]
      · exact (WithTop.isLUB_sSup' h).2 ha
    sInf_le := fun S a haS =>
      show ite _ _ _ ≤ a by
        simp only [OrderBot.bddBelow, not_true_eq_false, or_false]
        split_ifs with h₁
        · cases a
          · exact le_rfl
          cases h₁ haS
        · cases a
          · exact le_top
          · apply WithTop.coe_le_coe.2
            refine csInf_le ?_ haS
            use ⊥
            intro b _
            exact bot_le
    le_sInf := fun _ a haS => (WithTop.isGLB_sInf' ⟨a, haS⟩).2 haS }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4bed6db8557537e8ecfe5c8c0a7659c93316f2747f0b6dabd9211d57e8749305.lean#L920).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5c107b2de7a74cce403dbaa08551ee6a860495` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
