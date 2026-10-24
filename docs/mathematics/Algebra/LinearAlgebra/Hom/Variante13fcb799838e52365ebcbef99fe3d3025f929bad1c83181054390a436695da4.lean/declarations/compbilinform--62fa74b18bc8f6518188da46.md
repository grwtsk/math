# compBilinForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d340a700d3f4d4ce1a5834375981ee8b664bd06537dfe08689d7946af338468c",
  "kind": "def",
  "lexical_name": "compBilinForm",
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
  "slug": "compbilinform--62fa74b18bc8f6518188da46",
  "source": {
    "blob": "c80f85362352ad548b9b2cb3c48bd4aa6bf2bf53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 105,
    "path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62fa74b18bc8f6518188da46783436b8ebda043240016bcd9230aa03e9731137",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d340a700d3f4d4ce1a5834375981ee8b664bd06537dfe08689d7946af338468c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compBilinForm (f : R →ₗ[R'] R') (B : BilinForm R M) : BilinForm R' M :=
  compr₂ (restrictScalars₁₂ R' R' B) f

end LinearMap

namespace LinearMap

namespace BilinForm

section Comp

variable {M' : Type w} [AddCommMonoid M'] [Module R M']

/-- Apply a linear map on the left and right argument of a bilinear form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Hom/Variante13fcb799838e52365ebcbef99fe3d3025f929bad1c83181054390a436695da4.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80f85362352ad548b9b2cb3c48bd4aa6bf2bf53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
