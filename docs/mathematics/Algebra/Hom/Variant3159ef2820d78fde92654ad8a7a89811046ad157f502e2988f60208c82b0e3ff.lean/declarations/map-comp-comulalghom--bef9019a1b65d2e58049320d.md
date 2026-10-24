# map_comp_comulAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d75ce36d-e586-7868-2e39-4c84e87bcea6",
  "kind": "theorem",
  "lexical_name": "map_comp_comulAlgHom",
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
  "slug": "map-comp-comulalghom--bef9019a1b65d2e58049320d",
  "source": {
    "blob": "27a5430bb9511f78502880eb454d4e16e981e6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bef9019a1b65d2e58049320d1e1abd9a7ee39c16e660c3a0e6231da45a1ba32b",
  "verification": {
    "reference": "docs/verification/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d75ce36d-e586-7868-2e39-4c84e87bcea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp_comulAlgHom (f : F) :
    (Algebra.TensorProduct.map f f).comp (comulAlgHom R A) = (comulAlgHom R B).comp f :=
  AlgHom.toLinearMap_injective (CoalgHomClass.map_comp_comul f)

end
end BialgHomClass

namespace BialgHom

variable {R A B C D : Type*} [CommSemiring R] [Semiring A] [Algebra R A]
  [Semiring B] [Algebra R B] [Semiring C] [Algebra R C] [Semiring D] [Algebra R D]
  [CoalgebraStruct R A] [CoalgebraStruct R B] [CoalgebraStruct R C] [CoalgebraStruct R D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Hom/Variant3159ef2820d78fde92654ad8a7a89811046ad157f502e2988f60208c82b0e3ff.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a5430bb9511f78502880eb454d4e16e981e6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
