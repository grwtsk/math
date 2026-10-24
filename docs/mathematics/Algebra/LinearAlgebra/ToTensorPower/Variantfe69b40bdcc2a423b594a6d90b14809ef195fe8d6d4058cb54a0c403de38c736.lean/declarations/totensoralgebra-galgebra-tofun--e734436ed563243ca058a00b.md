# toTensorAlgebra_galgebra_toFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab75d5fb-34e1-3098-06c5-dc226cb7881c",
  "kind": "theorem",
  "lexical_name": "toTensorAlgebra_galgebra_toFun",
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
  "slug": "totensoralgebra-galgebra-tofun--e734436ed563243ca058a00b",
  "source": {
    "blob": "ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e734436ed563243ca058a00bdfa3c5151220bad7f7e35c74a0ade0c9218f7a35",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab75d5fb-34e1-3098-06c5-dc226cb7881c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toTensorAlgebra_galgebra_toFun (r : R) :
    TensorPower.toTensorAlgebra (DirectSum.GAlgebra.toFun (R := R) (A := fun n => (⨂[R]^n) M) r) =
      algebraMap _ _ r := by
  rw [TensorPower.galgebra_toFun_def, TensorPower.algebraMap₀_eq_smul_one, LinearMap.map_smul,
    TensorPower.toTensorAlgebra_gOne, Algebra.algebraMap_eq_smul_one]
#align tensor_power.to_tensor_algebra_galgebra_to_fun TensorPower.toTensorAlgebra_galgebra_toFun

end TensorPower

namespace TensorAlgebra

/-- The canonical map from a direct sum of tensor powers to the tensor algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ToTensorPower/Variantfe69b40bdcc2a423b594a6d90b14809ef195fe8d6d4058cb54a0c403de38c736.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce70c332f1e83c9a06f0ed510d2f5ad4ccc7fb25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
