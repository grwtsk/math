# pairingDual_apply_apply_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f1833de979f6d084316a16a3108dcd8adc42fb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adb17822-8f95-e565-dfeb-340d23d864f3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f528cdd-e0b3-5a67-f217-db7121e442bd",
  "kind": "lemma",
  "lexical_name": "pairingDual_apply_apply_eq_one",
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
  "slug": "pairingdual-apply-apply-eq-one--4dda5b058366f106f980d939",
  "source": {
    "blob": "7f1833de979f6d084316a16a3108dcd8adc42fb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 95,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dda5b058366f106f980d939e163816527916fbf7f39b513dd7fc7a9fe9cb164",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f528cdd-e0b3-5a67-f217-db7121e442bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pairingDual_apply_apply_eq_one (a : Fin n ↪o ι) :
    pairingDual R M n (ιMulti _ _ (f ∘ a)) (ιMulti _ _ (x ∘ a)) = 1 := by
  simp only [pairingDual_ιMulti_ιMulti, Function.comp_apply]
  rw [← Matrix.det_one (n := Fin n)]
  congr
  ext i j
  dsimp
  by_cases hij : i = j
  · subst hij
    simp only [h₁, Matrix.one_apply_eq]
  · rw [h₀ (by simpa using Ne.symm hij), Matrix.one_apply_ne hij]

include h₀ in
@[deprecated "no replacement" (since := "2026-08-23")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pairing/Variantf639b9edb575f2c0571cbf71fc9d621b364f626a52abff4cf166dbf0ce7805cb.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1833de979f6d084316a16a3108dcd8adc42fb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
