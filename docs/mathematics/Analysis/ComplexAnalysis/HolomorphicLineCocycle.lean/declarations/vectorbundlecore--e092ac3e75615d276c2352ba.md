# vectorBundleCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d34b8f5ffe339682fe524f5cc520402f250b9dca05abbc7139420770ff76ef63",
  "kind": "def",
  "lexical_name": "vectorBundleCore",
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
  "slug": "vectorbundlecore--e092ac3e75615d276c2352ba",
  "source": {
    "blob": "acafd65538bdd05b032ef9d376dee41f65860e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 109,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineCocycle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e092ac3e75615d276c2352ba9b4c95a3570875af10fee7b0aaa05d12b153d532",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineCocycle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d34b8f5ffe339682fe524f5cc520402f250b9dca05abbc7139420770ff76ef63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vectorBundleCore (C : Cocycle D) (hOpen : D.IsOpenCover) :
    VectorBundleCore ℂ D.X.carrier ℂ ι where
  baseSet := chartSet D
  isOpen_baseSet i := (hOpen.member_open i).preimage continuous_subtype_val
  indexAt := D.select
  mem_baseSet_at := D.select_mem
  coordChange := C.coordChange
  coordChange_self := by
    intro i x hi a
    rw [C.coordChange_apply, C.scalar_self i x hi, one_mul]
  continuousOn_coordChange := by
    intro i j
    exact (C.scalar_continuousOn i j).smul continuousOn_const
  coordChange_comp := by
    intro i j k x hx a
    simp only [coordChange_apply]
    rw [← mul_assoc, C.scalar_comp i j k x hx.1.1 hx.1.2 hx.2]

/-- The projection has the topology constructed by Mathlib's core, not the product topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineCocycle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineCocycle.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acafd65538bdd05b032ef9d376dee41f65860e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
