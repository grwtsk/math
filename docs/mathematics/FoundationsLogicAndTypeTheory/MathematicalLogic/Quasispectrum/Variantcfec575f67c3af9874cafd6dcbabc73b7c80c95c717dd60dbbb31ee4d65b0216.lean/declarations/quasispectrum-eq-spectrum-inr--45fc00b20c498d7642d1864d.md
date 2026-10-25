# quasispectrum_eq_spectrum_inr'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3f5d26e-48b9-bf8f-4f27-64ec0a9a6247",
  "kind": "lemma",
  "lexical_name": "quasispectrum_eq_spectrum_inr'",
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
  "slug": "quasispectrum-eq-spectrum-inr--45fc00b20c498d7642d1864d",
  "source": {
    "blob": "dbd8602c2cd8a81cb090f9586748676b155ace91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45fc00b20c498d7642d1864d87a34d7ca7c0410873d3bb35fdd8a2f25ed7691c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3f5d26e-48b9-bf8f-4f27-64ec0a9a6247`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma quasispectrum_eq_spectrum_inr' (R S : Type*) {A : Type*} [Semifield R]
    [Field S] [NonUnitalRing A] [Algebra R S] [Module S A] [IsScalarTower S A A]
    [SMulCommClass S A A] [Module R A] [IsScalarTower R S A] (a : A) :
    quasispectrum R a = spectrum R (a : Unitization S A) := by
  ext r
  have := Set.singleton_subset_iff.mpr (zero_mem_spectrum_inr R S a)
  rw [← Set.union_eq_self_of_subset_right this, ← quasispectrum_eq_spectrum_union_zero]
  apply forall_congr' fun x ↦ ?_
  rw [not_iff_not, Units.smul_def, Units.smul_def, ← inr_smul, ← inr_neg, isQuasiregular_inr_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quasispectrum/Variantcfec575f67c3af9874cafd6dcbabc73b7c80c95c717dd60dbbb31ee4d65b0216.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd8602c2cd8a81cb090f9586748676b155ace91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
