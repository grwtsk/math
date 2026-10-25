# MetricInvolutiveConvolutionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07eeb2360d6a6e909cb5084f47dc5fe530c3b5ad6bd8d2d987c5e4ebc5964910",
  "kind": "structure",
  "lexical_name": "MetricInvolutiveConvolutionCore",
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
  "slug": "metricinvolutiveconvolutioncore--0c86081799f0d500a06fa3e1",
  "source": {
    "blob": "e3e928588663fe167639e70b0242f94f57a5b012",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c86081799f0d500a06fa3e115f68764deebff955a4d117a223e49617db0b1dd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07eeb2360d6a6e909cb5084f47dc5fe530c3b5ad6bd8d2d987c5e4ebc5964910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MetricInvolutiveConvolutionCore
    extends InvolutiveConvolutionCore X where
  inner : (X → ℝ) → (X → ℝ) → ℝ
  selfAdjoint :
    ∀ u v, inner (operator u) v = inner u (operator v)
  isometry :
    ∀ u, inner (operator u) (operator u) = inner u u

namespace InvolutiveConvolutionCore

variable {X : Type u} [Fintype X] [DecidableEq X]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/InvolutiveConvolution/Varianta3ce6fa5fbfb0ae98512431b5f63ebcbfbbe575c8fa098476a3fa00bda354814.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e928588663fe167639e70b0242f94f57a5b012` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
