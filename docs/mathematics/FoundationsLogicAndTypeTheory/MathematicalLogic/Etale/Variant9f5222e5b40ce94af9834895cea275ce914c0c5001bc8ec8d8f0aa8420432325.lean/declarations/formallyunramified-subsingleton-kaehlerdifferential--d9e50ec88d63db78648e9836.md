# FormallyUnramified.subsingleton_kaehlerDifferential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d806f7f0fe40425a0f9242b4e4a49d73121a87b809a73a5768e7e5e2928edcd9",
  "kind": "instance",
  "lexical_name": "FormallyUnramified.subsingleton_kaehlerDifferential",
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
  "slug": "formallyunramified-subsingleton-kaehlerdifferential--d9e50ec88d63db78648e9836",
  "source": {
    "blob": "65b2073433fa1958bb61cf05db35fc6140a1be9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 406,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d9e50ec88d63db78648e9836535570c6f2a00e3eeb29697e3b4dc51622424106",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d806f7f0fe40425a0f9242b4e4a49d73121a87b809a73a5768e7e5e2928edcd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance FormallyUnramified.subsingleton_kaehlerDifferential [FormallyUnramified R S] :
    Subsingleton (Ω[S⁄R]) := by
  rw [← not_nontrivial_iff_subsingleton]
  intro h
  obtain ⟨f₁, f₂, e⟩ := (KaehlerDifferential.endEquiv R S).injective.nontrivial
  apply e
  ext1
  apply FormallyUnramified.lift_unique' _ _ _ _ (f₁.2.trans f₂.2.symm)
  rw [← AlgHom.toRingHom_eq_coe, AlgHom.ker_kerSquareLift]
  exact ⟨_, Ideal.cotangentIdeal_square _⟩
#align algebra.formally_unramified.subsingleton_kaehler_differential Algebra.FormallyUnramified.subsingleton_kaehlerDifferential

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant9f5222e5b40ce94af9834895cea275ce914c0c5001bc8ec8d8f0aa8420432325.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65b2073433fa1958bb61cf05db35fc6140a1be9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
