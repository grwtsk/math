# equivalenceModuleMonoidAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d2505c611037e398cf3a2fe06cf18175d030dd5aae48eafb7f8766512c213783",
  "kind": "def",
  "lexical_name": "equivalenceModuleMonoidAlgebra",
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
  "slug": "equivalencemodulemonoidalgebra--f6df097ebc2a97f9c7046f12",
  "source": {
    "blob": "849b30a5687865da1ee5778697009f61b732e796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 167,
    "path": "GRWTSK/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6df097ebc2a97f9c7046f12d74472958bae3e9ad74b980c9e0712a9e616a9c0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d2505c611037e398cf3a2fe06cf18175d030dd5aae48eafb7f8766512c213783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivalenceModuleMonoidAlgebra : Rep.{w} k G ≌ ModuleCat k[G] where
  functor := toModuleMonoidAlgebra
  inverse := ofModuleMonoidAlgebra
  unitIso := NatIso.ofComponents (fun V => unitIso V) (by cat_disch)
  counitIso := NatIso.ofComponents (fun M => counitIso M) (by cat_disch)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Iso/Variantc029b14c59e0b9c16c8f418172cb7c7e2822f8edc4d533f77806a53ea71991bd.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849b30a5687865da1ee5778697009f61b732e796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
