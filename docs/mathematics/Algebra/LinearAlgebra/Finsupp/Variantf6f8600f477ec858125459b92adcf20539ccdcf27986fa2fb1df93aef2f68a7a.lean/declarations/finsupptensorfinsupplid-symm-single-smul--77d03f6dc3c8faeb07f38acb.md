# finsuppTensorFinsuppLid_symm_single_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9591583-dd12-59e0-6f89-e4949e09a99f",
  "kind": "theorem",
  "lexical_name": "finsuppTensorFinsuppLid_symm_single_smul",
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
  "slug": "finsupptensorfinsupplid-symm-single-smul--77d03f6dc3c8faeb07f38acb",
  "source": {
    "blob": "e5277b8c2087769d46f17dcf5f5bc715b445c1fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 311,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77d03f6dc3c8faeb07f38acb910ad57d4871c0298f2e3bf16eabd4e3e683396f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9591583-dd12-59e0-6f89-e4949e09a99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsuppTensorFinsuppLid_symm_single_smul (i : ι × κ) (r : R) (n : N) :
    (finsuppTensorFinsuppLid R N ι κ).symm (Finsupp.single i (r • n)) =
      Finsupp.single i.1 r ⊗ₜ Finsupp.single i.2 n :=
  Prod.casesOn i fun _ _ =>
    (LinearEquiv.symm_apply_eq _).2 (finsuppTensorFinsuppLid_single_tmul_single ..).symm

/-- A variant of `finsuppTensorFinsupp` where the second module is the ground ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finsupp/Variantf6f8600f477ec858125459b92adcf20539ccdcf27986fa2fb1df93aef2f68a7a.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5277b8c2087769d46f17dcf5f5bc715b445c1fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
