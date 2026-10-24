# adE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ed86fb1fed901544afef781e8fcbe4e849fe0be86bdcf2898ceef9c908235cd",
  "kind": "def",
  "lexical_name": "adE",
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
  "slug": "ade--8cc1b99cc8271c093b7e8aca",
  "source": {
    "blob": "228bf45005b9b0ba907740b000d36ce9f9392e53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cc1b99cc8271c093b7e8aca9e1200f14b2d4718568f581bec2d49819e9c447a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ed86fb1fed901544afef781e8fcbe4e849fe0be86bdcf2898ceef9c908235cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adE : B × B → FreeLieAlgebra R (Generators B) :=
  uncurry fun i j => ad (E i) ^ (-A i j).toNat <| ⁅E i, E j⁆
#align cartan_matrix.relations.ad_E CartanMatrix.Relations.adE

/-- The terms corresponding to the `ad F`-relations.

See also `adE` docstring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant24dbfdae44527db072de0b0ba70073bd8f87bd59349649c809db6bd47a12fe39.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228bf45005b9b0ba907740b000d36ce9f9392e53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
