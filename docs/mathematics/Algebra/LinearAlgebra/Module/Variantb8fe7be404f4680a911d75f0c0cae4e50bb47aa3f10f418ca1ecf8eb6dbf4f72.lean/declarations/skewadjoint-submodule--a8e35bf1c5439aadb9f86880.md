# skewAdjoint.submodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:578741d8a2e0d683d8dae10542397dd1808f48d3a51ad0dc944f54e2af8711dc",
  "kind": "def",
  "lexical_name": "skewAdjoint.submodule",
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
  "slug": "skewadjoint-submodule--a8e35bf1c5439aadb9f86880",
  "source": {
    "blob": "d28ddb9f5b98fb1c3ce10d92fda4822def44b96e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 129,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8e35bf1c5439aadb9f86880254218ca17569ddcfeb7a3d163f24caa8c4b9ed1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:578741d8a2e0d683d8dae10542397dd1808f48d3a51ad0dc944f54e2af8711dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def skewAdjoint.submodule : Submodule R A :=
  { skewAdjoint A with smul_mem' := skewAdjoint.smul_mem }

variable {A} [Invertible (2 : R)]

/-- The self-adjoint part of an element of a star module, as a linear map. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d28ddb9f5b98fb1c3ce10d92fda4822def44b96e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
