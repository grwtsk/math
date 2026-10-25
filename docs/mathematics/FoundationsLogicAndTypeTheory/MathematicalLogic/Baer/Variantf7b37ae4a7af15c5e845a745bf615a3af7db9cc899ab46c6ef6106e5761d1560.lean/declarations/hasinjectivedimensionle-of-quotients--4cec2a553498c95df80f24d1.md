# hasInjectiveDimensionLE_of_quotients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48e7551e-a24f-cbeb-8deb-a015bb671ea4",
  "kind": "lemma",
  "lexical_name": "hasInjectiveDimensionLE_of_quotients",
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
  "slug": "hasinjectivedimensionle-of-quotients--4cec2a553498c95df80f24d1",
  "source": {
    "blob": "40c8f112ed578793647e84defef7de48c559d4cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cec2a553498c95df80f24d11b7b025afb05d5df35680229b3b4bd7930f5d765",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e7551e-a24f-cbeb-8deb-a015bb671ea4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasInjectiveDimensionLE_of_quotients [Small.{v} R] (M : ModuleCat.{v} R) (n : ℕ)
    (h : ∀ I : Ideal R, Subsingleton (Ext ↧(Shrink.{v} (R ⧸ I)) M (n + 1))) :
    HasInjectiveDimensionLE M n := by
  induction n generalizing M with
  | zero =>
    -- The case `n = 0` is exactly the Ext form of Baer's criterion.
    have : Injective M := injective_of_subsingleton_ext_quotient_one M h
    infer_instance
  | succ n ih =>
    -- Dimension shifting reduces the statement for `M` to
    -- the cokernel of an injective presentation.
    let ip : InjectivePresentation M := Classical.arbitrary _
    refine ip.shortExact_shortComplex.hasInjectiveDimensionLT_X₁ _
      (ih _ (fun I ↦ subsingleton_of_forall_eq 0 (fun x₃ ↦ ?_))) inferInstance
    obtain ⟨x₂, rfl⟩ := Ext.covariant_sequence_exact₃ _ ip.shortExact_shortComplex x₃ rfl
      (by subsingleton)
    simp [Subsingleton.elim x₂ 0]

/-- The zeroth Ext group from `R ⧸ ⊥` is canonically equivalent to the underlying module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Baer/Variantf7b37ae4a7af15c5e845a745bf615a3af7db9cc899ab46c6ef6106e5761d1560.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40c8f112ed578793647e84defef7de48c559d4cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
