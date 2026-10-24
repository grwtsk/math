# ContDiffAt.clm_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 987,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e12d544-a0ae-f338-ed1c-31429894fef5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5dfa2660-14ed-ca6b-fdd2-4b6a8b0da32e",
  "kind": "theorem",
  "lexical_name": "ContDiffAt.clm_comp",
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
  "slug": "contdiffat-clm-comp--60b57e3402646e568fad7078",
  "source": {
    "blob": "b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 992,
    "line": 987,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60b57e3402646e568fad7078794c785d5239dbfd13f2893b58792116ab987fe0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dfa2660-14ed-ca6b-fdd2-4b6a8b0da32e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 987–992.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffAt.clm_comp {g : X → F →L[𝕜] G} {f : X → E →L[𝕜] F} {x : X}
    (hg : ContDiffAt 𝕜 n g x) (hf : ContDiffAt 𝕜 n f x) :
    ContDiffAt 𝕜 n (fun x => (g x).comp (f x)) x :=
  (isBoundedBilinearMap_comp (E := E) (G := G)).contDiff.comp₂_contDiffAt hg hf

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant98a9fe4d64f9a56e9d980f0ce67bdbf3946664006ec244fdefde1032fa54b1f9.lean#L987).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b18329b4a2146f6fafc6cf7f9f3da76c9d12c82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
