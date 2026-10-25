# instantiate_profile_ascent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77222208-34a1-a082-3ebb-d36ee1e01666",
  "kind": "theorem",
  "lexical_name": "instantiate_profile_ascent",
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
  "slug": "instantiate-profile-ascent--6ebe5f692e3ed48186082618",
  "source": {
    "blob": "c56f5dd9c2e998dad0ae22a59308e2d767cf8528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1138,
    "line": 1128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ebe5f692e3ed481860826181c15ac0b4f5caddf6d8e5a4e9ca48171b2eabba5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77222208-34a1-a082-3ebb-d36ee1e01666`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1128–1138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem instantiate_profile_ascent {Γ : List (Expr S)} {D E n : Expr S} {s : S}
    (hp : PureTypeSystem.HasType P Γ (.pi D E) (.sort s))
    (hn : PureTypeSystem.HasType P Γ n D) {σ : Nat → Expr S} (hσ : Ω.TypedSubstitution Γ σ) :
    PositivePath (PrimaryEdge P) (Ω.profile ((E.instantiate n).subst σ))
      (Ω.profile (Expr.pi D E |>.subst σ)) := by
  have hp' := ContextTower.HasType.subst hp hσ
  have hn' := ContextTower.HasType.subst hn hσ
  obtain ⟨J,htr,hpath⟩ := Ω.frame_profiles hw hp' hn'
  rw [← Expr.instantiate_subst]
  exact hpath.trans (.single (.codomain htr))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant5f337d0267809c7b579de2e869dd883de30062fec3e13f419fe05e4ca5181bd6.lean#L1128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56f5dd9c2e998dad0ae22a59308e2d767cf8528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
