# linearEquivTuple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd486209e0b34e53f954a17549ab36ce2bd9d4d96a93710c49cab8c0d352f9cc",
  "kind": "def",
  "lexical_name": "linearEquivTuple",
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
  "slug": "linearequivtuple--52044150714e4e92d55166ea",
  "source": {
    "blob": "7a0cd2b7b8aa3bc92710525b5d0075ba1e0ba557",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 560,
    "line": 552,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:52044150714e4e92d55166ea83290e7fdb5b2cad16ecafe0f643fb5c9b1e1f81",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd486209e0b34e53f954a17549ab36ce2bd9d4d96a93710c49cab8c0d352f9cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 552–560.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearEquivTuple : ℍ[R,c₁,c₂,c₃] ≃ₗ[R] Fin 4 → R :=
  LinearEquiv.symm -- proofs are not `rfl` in the forward direction
    { (equivTuple c₁ c₂ c₃).symm with
      toFun := (equivTuple c₁ c₂ c₃).symm
      invFun := equivTuple c₁ c₂ c₃
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quaternion/Variantf27f58e379220bb8e5dac37297e41f1519c7b0afadbac69a21edd32115b543de.lean#L552).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0cd2b7b8aa3bc92710525b5d0075ba1e0ba557` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
