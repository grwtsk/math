# CompatibleRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bda91a5df1163c9a84df84e9680cbbae2d907f3f037de86ed8da56b379b7bd86",
  "kind": "class",
  "lexical_name": "CompatibleRing",
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
  "slug": "compatiblering--37004652df4b9258e25f9b61",
  "source": {
    "blob": "28aef1785af70890fc4525c397b103f9aa985669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:37004652df4b9258e25f9b61583aa69d74241704e28954b4ee6b33a1c375c206",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bda91a5df1163c9a84df84e9680cbbae2d907f3f037de86ed8da56b379b7bd86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class CompatibleRing (R : Type*) [Add R] [Mul R] [Neg R] [One R] [Zero R]
    extends Language.ring.Structure R where
  /-- Addition in the `Language.ring.Structure` is the same as the addition given by the
    `Add` instance -/
  funMap_add : ∀ x, funMap addFunc x = x 0 + x 1
  /-- Multiplication in the `Language.ring.Structure` is the same as the multiplication given by the
    `Mul` instance -/
  funMap_mul : ∀ x, funMap mulFunc x = x 0 * x 1
  /-- Negation in the `Language.ring.Structure` is the same as the negation given by the
    `Neg` instance -/
  funMap_neg : ∀ x, funMap negFunc x = -x 0
  /-- The constant `0` in the `Language.ring.Structure` is the same as the constant given by the
    `Zero` instance -/
  funMap_zero : ∀ x, funMap (zeroFunc : Language.ring.Constants) x = 0
  /-- The constant `1` in the `Language.ring.Structure` is the same as the constant given by the
    `One` instance -/
  funMap_one : ∀ x, funMap (oneFunc : Language.ring.Constants) x = 1

open CompatibleRing

attribute [simp] funMap_add funMap_mul funMap_neg funMap_zero funMap_one

section

variable {R : Type*} [Add R] [Mul R] [Neg R] [One R] [Zero R] [CompatibleRing R]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantac86844914514a243247e77c468ba3a456af31fdaba712f4f7a80a2157b52761.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28aef1785af70890fc4525c397b103f9aa985669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
