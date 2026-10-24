# lift_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d247b7d5-882c-5d9e-46ab-45e3107790da",
  "kind": "lemma",
  "lexical_name": "lift_injective",
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
  "slug": "lift-injective--9fd4a43d7339b2f9661a0adf",
  "source": {
    "blob": "ce55d9d4545548f1af235ca01c960aab74f90e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1180,
    "line": 1151,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fd4a43d7339b2f9661a0adf9f1f22b12938bf091052fbf101a904bc3815793f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d247b7d5-882c-5d9e-46ab-45e3107790da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lift_injective {f : {f : ℤ →+ A // f n = 0}} :
    Injective (lift n f) ↔ ∀ m, f.1 m = 0 → (m : ZMod n) = 0 := by
  simp only [← AddMonoidHom.ker_eq_bot_iff, eq_bot_iff, SetLike.le_def,
    ZMod.intCast_surjective.forall, ZMod.lift_coe, AddMonoidHom.mem_ker, AddSubgroup.mem_bot]

end lift

end ZMod

/-!
### Groups of bounded torsion

For `G` a group and `n` a natural number, `G` having torsion dividing `n`
(`∀ x : G, n • x = 0`) can be derived from `Module R G` where `R` has characteristic dividing `n`.

It is however painful to have the API for such groups `G` stated in this generality, as `R` does not
appear anywhere in the lemmas' return type. Instead of writing the API in terms of a general `R`, we
therefore specialise to the canonical ring of order `n`, namely `ZMod n`.

This spelling `Module (ZMod n) G` has the extra advantage of providing the canonical action by
`ZMod n`. It is however Type-valued, so we might want to acquire a Prop-valued version in the
future.
-/

section Module
variable {n : ℕ} {S G : Type*} [AddCommGroup G] [SetLike S G] [AddSubgroupClass S G] {K : S} {x : G}

section general
variable [Module (ZMod n) G] {x : G}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant0902ebbe68a1ed5ffe092bf10e042f14b06afe6e789e11940d4cc4ea23103ac4.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce55d9d4545548f1af235ca01c960aab74f90e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
