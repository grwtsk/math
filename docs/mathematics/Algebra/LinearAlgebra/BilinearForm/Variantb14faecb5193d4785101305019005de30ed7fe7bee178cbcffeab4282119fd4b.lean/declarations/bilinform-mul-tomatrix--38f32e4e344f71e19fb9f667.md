# BilinForm.mul_toMatrix'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a65030e9-83c8-1614-797b-4a8cf6705549",
  "kind": "theorem",
  "lexical_name": "BilinForm.mul_toMatrix'",
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
  "slug": "bilinform-mul-tomatrix--38f32e4e344f71e19fb9f667",
  "source": {
    "blob": "c54571748baeb5cfe58bc42ca565500d82ef4de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 165,
    "path": "GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38f32e4e344f71e19fb9f667d37cc7364dfd319f4347a08298d61bd011aac2f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a65030e9-83c8-1614-797b-4a8cf6705549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BilinForm.mul_toMatrix' (B : BilinForm R₁ (n → R₁)) (M : Matrix n n R₁) :
    M * B.toMatrix' = (B.compLeft (Mᵀ).toLin').toMatrix' :=
  LinearMap.mul_toMatrix' B _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BilinearForm/Variantb14faecb5193d4785101305019005de30ed7fe7bee178cbcffeab4282119fd4b.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c54571748baeb5cfe58bc42ca565500d82ef4de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
