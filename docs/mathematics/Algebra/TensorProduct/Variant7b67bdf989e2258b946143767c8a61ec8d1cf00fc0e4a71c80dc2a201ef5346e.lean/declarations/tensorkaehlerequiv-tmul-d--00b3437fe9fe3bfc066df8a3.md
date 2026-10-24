# tensorKaehlerEquiv_tmul_D

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cec83eaa-7672-addf-c4a2-d200cc6c8a7f",
  "kind": "lemma",
  "lexical_name": "tensorKaehlerEquiv_tmul_D",
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
  "slug": "tensorkaehlerequiv-tmul-d--00b3437fe9fe3bfc066df8a3",
  "source": {
    "blob": "27489bd59e6309d5f95600e389fc02ab2a87273e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 277,
    "path": "GRWTSK/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00b3437fe9fe3bfc066df8a36ced231bcf542cf506a10afad1d0b5826fc8e769",
  "verification": {
    "reference": "docs/verification/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cec83eaa-7672-addf-c4a2-d200cc6c8a7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tensorKaehlerEquiv_tmul_D [Algebra.IsPushout R S A B] (b a) :
    tensorKaehlerEquiv R S A B (b ⊗ₜ D _ _ a) = b • D S B (algebraMap A B a) := by
  have : Algebra.IsPushout R A S B := .symm inferInstance
  obtain ⟨b, rfl⟩ := (Algebra.IsPushout.equiv R A S B).surjective b
  induction b with
  | add x y _ _ => simp only [map_add, *, add_tmul, add_smul]
  | tmul a' s =>
  trans s • a' • D S B (algebraMap A B a)
  · simp [tensorKaehlerEquiv]
  · simp [Algebra.IsPushout.equiv_tmul, mul_smul, smul_comm]

attribute [local instance] Algebra.TensorProduct.rightAlgebra in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/TensorProduct/Variant7b67bdf989e2258b946143767c8a61ec8d1cf00fc0e4a71c80dc2a201ef5346e.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27489bd59e6309d5f95600e389fc02ab2a87273e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
