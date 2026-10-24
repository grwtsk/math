# KaehlerDifferential.D

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7705b25c86273196d01ecb9e212a63b9b32a000fd0f0f8ba646b2f018bc5e91",
  "kind": "def",
  "lexical_name": "KaehlerDifferential.D",
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
  "slug": "kaehlerdifferential-d--3c21757f00da4352739c267f",
  "source": {
    "blob": "b184a5aebc67289390eac066e3c99fe99281dbd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 203,
    "path": "GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3c21757f00da4352739c267fa0916a5b04d3141e5753350f92eeda506701221f",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7705b25c86273196d01ecb9e212a63b9b32a000fd0f0f8ba646b2f018bc5e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KaehlerDifferential.D : Derivation R S Ω[S⁄R] :=
  { toLinearMap := KaehlerDifferential.DLinearMap R S
    map_one_eq_zero' := by
      dsimp [KaehlerDifferential.DLinearMap_apply, Ideal.toCotangent_apply]
      congr
      rw [sub_self]
    leibniz' := fun a b => by
      have : LinearMap.CompatibleSMul { x // x ∈ ideal R S } Ω[S⁄R] S (S ⊗[R] S) := inferInstance
      dsimp [KaehlerDifferential.DLinearMap_apply]
      rw [← LinearMap.map_smul_of_tower (ideal R S).toCotangent,
        ← LinearMap.map_smul_of_tower (ideal R S).toCotangent,
        ← map_add (ideal R S).toCotangent, Ideal.toCotangent_eq, pow_two]
      convert!
        Submodule.mul_mem_mul (KaehlerDifferential.one_smul_sub_smul_one_mem_ideal R a :)
          (KaehlerDifferential.one_smul_sub_smul_one_mem_ideal R b :) using 1
      simp only [Submodule.coe_add,
        TensorProduct.tmul_mul_tmul, mul_sub, sub_mul, mul_comm b, Submodule.coe_smul_of_tower,
        smul_sub, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
      ring_nf }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant30bf8f4259aa25bafb05236e71ca9cca37810f8796428ba2041a0ee385a707c0.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b184a5aebc67289390eac066e3c99fe99281dbd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
