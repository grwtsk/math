# stalkPushforward

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:007fedaf74b2503e28a037baf508f0cd0ea602f5220f62da9f44045606bef92f",
  "kind": "def",
  "lexical_name": "stalkPushforward",
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
  "slug": "stalkpushforward--7012ff9b27c845bfb704f7a9",
  "source": {
    "blob": "ccd349bd1003876841689780e0fe453c4ff911a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7012ff9b27c845bfb704f7a9b6329034530f391b6fcdab7a778f240af2bc4f87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:007fedaf74b2503e28a037baf508f0cd0ea602f5220f62da9f44045606bef92f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stalkPushforward (f : X ⟶ Y) (F : X.Presheaf C) (x : X) : (f _* F).stalk (f x) ⟶ F.stalk x := by
  -- This is a hack; Lean doesn't like to elaborate the term written directly.
  refine ?_ ≫ colimit.pre _ (OpenNhds.map f x).op
  exact colim.map (whiskerRight (NatTrans.op (OpenNhds.inclusionMapIso f x).inv) F)

@[reassoc (attr := simp), elementwise (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Stalks/Variant38a6b35843bc633f5bb290dd15a78a6ff04acb75a86695ef590cb70b92e0fbb9.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd349bd1003876841689780e0fe453c4ff911a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
