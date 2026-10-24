# directLimitDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec41fc744b699cad8784186f5fab4e5ab7c311e10f3b655639f24f7cdaa224b1",
  "kind": "def",
  "lexical_name": "directLimitDiagram",
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
  "slug": "directlimitdiagram--6d8518571a2b0c2502432406",
  "source": {
    "blob": "9294ca924da1c295cc69c9cd10f8321f0b29cd63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 202,
    "path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d8518571a2b0c25024324067cbcb8c1f427e6ef28573cf75490e2f1d5b37a24",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec41fc744b699cad8784186f5fab4e5ab7c311e10f3b655639f24f7cdaa224b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directLimitDiagram : ι ⥤ ModuleCat R where
  obj i := ModuleCat.of R (G i)
  map hij := f _ _ hij.le
  map_id i := by
    apply LinearMap.ext
    intro x
    apply Module.DirectedSystem.map_self
  map_comp hij hjk := by
    apply LinearMap.ext
    intro x
    symm
    apply Module.DirectedSystem.map_map
#align Module.direct_limit_diagram ModuleCat.directLimitDiagram

variable [DecidableEq ι]

/-- The `Cocone` on `directLimitDiagram` corresponding to
the unbundled `directLimit` of modules.

In `directLimitIsColimit` we show that it is a colimit cocone. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9294ca924da1c295cc69c9cd10f8321f0b29cd63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
