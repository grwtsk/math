# toCycles_moduleCatCyclesIso_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4db2087884967af9bcc74cfe79ef9b731fce6fc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88ad3f3f-8856-44dc-2264-c8d55337aa22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36ffa080-44a0-f4d7-0425-547cd583b825",
  "kind": "lemma",
  "lexical_name": "toCycles_moduleCatCyclesIso_hom",
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
  "slug": "tocycles-modulecatcyclesiso-hom--759726710c040751312e5f55",
  "source": {
    "blob": "4db2087884967af9bcc74cfe79ef9b731fce6fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 166,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:759726710c040751312e5f55c489dd14fc1f43aa0703df44f5023213152799c2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36ffa080-44a0-f4d7-0425-547cd583b825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toCycles_moduleCatCyclesIso_hom :
    S.toCycles ≫ S.moduleCatCyclesIso.hom = S.moduleCatLeftHomologyData.f' := by
  simp [← cancel_mono S.moduleCatLeftHomologyData.i]

/-- Given a short complex `S` of modules, this is the isomorphism between
the abstract `S.homology` of the homology API and the more explicit
quotient of `LinearMap.ker S.g` by the image of
`S.moduleCatToCycles : S.X₁ →ₗ[R] LinearMap.ker S.g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4db2087884967af9bcc74cfe79ef9b731fce6fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
