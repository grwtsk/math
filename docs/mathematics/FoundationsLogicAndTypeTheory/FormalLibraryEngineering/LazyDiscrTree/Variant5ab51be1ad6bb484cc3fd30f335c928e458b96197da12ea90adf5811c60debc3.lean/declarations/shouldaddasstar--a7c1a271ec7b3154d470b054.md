# shouldAddAsStar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5883c1f375a07a143b35b2d21a4f512fd81e1aa18a2a6b40b19229584273beee",
  "kind": "def",
  "lexical_name": "shouldAddAsStar",
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
  "slug": "shouldaddasstar--a7c1a271ec7b3154d470b054",
  "source": {
    "blob": "54e08e1f136f6788d9dd6e6567c376c99e90f548",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variant5ab51be1ad6bb484cc3fd30f335c928e458b96197da12ea90adf5811c60debc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7c1a271ec7b3154d470b05418742f367948ae40a3de789a179bb8468e782b3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variant5ab51be1ad6bb484cc3fd30f335c928e458b96197da12ea90adf5811c60debc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5883c1f375a07a143b35b2d21a4f512fd81e1aa18a2a6b40b19229584273beee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shouldAddAsStar (fName : Name) (e : Expr) : MetaM Bool := do
  isNatOffset fName e

/--
Eliminate loose bound variables via beta-reduction.

This is primarily used to reduce pi-terms `∀(x : P), T` into
non-dependent functions `P → T`.  The latter has a more specific
discrimination tree key `.arrow..` and this improves the accuracy of the
discrimination tree.

Clone of `Lean.Meta.DiscrTree.elimLooseBVarsByBeta`.  See it for more
discussion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variant5ab51be1ad6bb484cc3fd30f335c928e458b96197da12ea90adf5811c60debc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LazyDiscrTree/Variant5ab51be1ad6bb484cc3fd30f335c928e458b96197da12ea90adf5811c60debc3.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54e08e1f136f6788d9dd6e6567c376c99e90f548` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
