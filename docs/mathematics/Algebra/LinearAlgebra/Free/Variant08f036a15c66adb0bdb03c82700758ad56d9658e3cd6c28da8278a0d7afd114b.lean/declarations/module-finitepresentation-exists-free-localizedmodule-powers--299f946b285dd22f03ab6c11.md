# Module.FinitePresentation.exists_free_localizedModule_powers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ae7107ebde79e6b9f4c78052d21ecc14e861d22",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 75,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c287324a-95d6-06dc-8e4c-28832275a222",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8fd570d-450a-c0e6-5458-c67f647e49ad",
  "kind": "lemma",
  "lexical_name": "Module.FinitePresentation.exists_free_localizedModule_powers",
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
  "slug": "module-finitepresentation-exists-free-localizedmodule-powers--299f946b285dd22f03ab6c11",
  "source": {
    "blob": "2ae7107ebde79e6b9f4c78052d21ecc14e861d22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 75,
    "path": "GRWTSK/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:299f946b285dd22f03ab6c11d155e4abd8c635391c5431cdb9f18d3a95b8bea4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8fd570d-450a-c0e6-5458-c67f647e49ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.FinitePresentation.exists_free_localizedModule_powers
    (Rₛ) [CommRing Rₛ] [Algebra R Rₛ] [Module Rₛ M'] [IsScalarTower R Rₛ M'] [Nontrivial Rₛ]
    [IsLocalization S Rₛ] [Module.FinitePresentation R M] [Module.Free Rₛ M'] :
    ∃ r, r ∈ S ∧
      Module.Free (Localization (.powers r)) (LocalizedModule (.powers r) M) ∧
      Module.finrank (Localization (.powers r)) (LocalizedModule (.powers r) M) =
        Module.finrank Rₛ M' := by
  let I := Module.Free.ChooseBasisIndex Rₛ M'
  let b : Basis I Rₛ M' := Module.Free.chooseBasis Rₛ M'
  have : Module.Finite Rₛ M' := Module.Finite.of_isLocalizedModule S (Rₚ := Rₛ) f
  obtain ⟨r, hr, b', _⟩ := Module.FinitePresentation.exists_basis_localizedModule_powers S f Rₛ b
  have := (show Localization (.powers r) →+* Rₛ from IsLocalization.map (M := .powers r) (T := S) _
    (RingHom.id _) (Submonoid.powers_le.mpr hr)).domain_nontrivial
  refine ⟨r, hr, .of_basis b', ?_⟩
  rw [Module.finrank_eq_nat_card_basis b, Module.finrank_eq_nat_card_basis b']
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Free/Variant08f036a15c66adb0bdb03c82700758ad56d9658e3cd6c28da8278a0d7afd114b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ae7107ebde79e6b9f4c78052d21ecc14e861d22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
