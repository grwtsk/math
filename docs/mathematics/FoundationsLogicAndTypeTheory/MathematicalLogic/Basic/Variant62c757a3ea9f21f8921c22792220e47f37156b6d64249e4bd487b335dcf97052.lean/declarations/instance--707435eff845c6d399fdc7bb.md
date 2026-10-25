# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba4da0416488c22c38f2921d19ed10465d00c134135e2230002a4688b6712d0f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--707435eff845c6d399fdc7bb",
  "source": {
    "blob": "ff2ea50fde9b54c3468ff776ab5b3523185039e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 294,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:707435eff845c6d399fdc7bb8622aaf8c9e27b967a75a713680e0fdbf5663569",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba4da0416488c22c38f2921d19ed10465d00c134135e2230002a4688b6712d0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) instHasTrivialRadical : HasTrivialRadical R L := by
  rw [hasTrivialRadical_iff_no_abelian_ideals]
  intro I hI
  apply (eq_bot_or_exists_atom_le I).resolve_right
  rintro ⟨J, hJ, hJ'⟩
  apply IsSemisimple.non_abelian_of_isAtom J hJ
  constructor
  intro x y
  ext
  simp only [LieIdeal.coe_bracket_of_module, LieSubmodule.coe_bracket, ZeroMemClass.coe_zero]
  have : (⁅(⟨x, hJ' x.2⟩ : I), ⟨y, hJ' y.2⟩⁆ : I) = 0 := trivial_lie_zero _ _ _ _
  apply_fun Subtype.val at this
  exact this

end IsSemisimple

/-- A simple Lie algebra is semisimple. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant62c757a3ea9f21f8921c22792220e47f37156b6d64249e4bd487b335dcf97052.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff2ea50fde9b54c3468ff776ab5b3523185039e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
