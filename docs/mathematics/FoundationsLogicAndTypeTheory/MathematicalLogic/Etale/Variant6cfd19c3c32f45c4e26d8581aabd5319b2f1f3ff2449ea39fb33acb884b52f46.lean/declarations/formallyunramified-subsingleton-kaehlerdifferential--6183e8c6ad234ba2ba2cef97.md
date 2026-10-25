# FormallyUnramified.subsingleton_kaehlerDifferential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f05d149d1ae412521e9157f639b457049ea00c042a7f26f772dccb34036c5594",
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
  "slug": "formallyunramified-subsingleton-kaehlerdifferential--6183e8c6ad234ba2ba2cef97",
  "source": {
    "blob": "45fdea5251f372e68b0d71e202ba62243570e20f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 398,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6183e8c6ad234ba2ba2cef97012cedf54e01d909f212364574f0c0e1b9fddf2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f05d149d1ae412521e9157f639b457049ea00c042a7f26f772dccb34036c5594`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–409.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Etale/Variant6cfd19c3c32f45c4e26d8581aabd5319b2f1f3ff2449ea39fb33acb884b52f46.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45fdea5251f372e68b0d71e202ba62243570e20f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
