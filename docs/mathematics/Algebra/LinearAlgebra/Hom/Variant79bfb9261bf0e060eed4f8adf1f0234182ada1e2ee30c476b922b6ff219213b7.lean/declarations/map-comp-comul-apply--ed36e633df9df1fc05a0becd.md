# map_comp_comul_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a934ce1e-51ee-f622-b453-b33b79b66aaf",
  "kind": "theorem",
  "lexical_name": "map_comp_comul_apply",
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
  "slug": "map-comp-comul-apply--ed36e633df9df1fc05a0becd",
  "source": {
    "blob": "985d7b766ef00deaf90e8ed4ade9fb78f1ee2608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed36e633df9df1fc05a0becdd0aefdbcd0e5cbf836226379cbf913fe43d7414d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a934ce1e-51ee-f622-b453-b33b79b66aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp_comul_apply (f : F) (x : A) :
    TensorProduct.map f f (comul x) = comul (R := R) (f x) :=
  LinearMap.congr_fun (map_comp_comul f) _

end CoalgHomClass

namespace CoalgHom

variable {R A B C D : Type*}

section

variable [CommSemiring R] [AddCommMonoid A] [Module R A] [AddCommMonoid B] [Module R B]
  [AddCommMonoid C] [Module R C] [AddCommMonoid D] [Module R D]
  [CoalgebraStruct R A] [CoalgebraStruct R B] [CoalgebraStruct R C] [CoalgebraStruct R D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variant79bfb9261bf0e060eed4f8adf1f0234182ada1e2ee30c476b922b6ff219213b7.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `985d7b766ef00deaf90e8ed4ade9fb78f1ee2608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
