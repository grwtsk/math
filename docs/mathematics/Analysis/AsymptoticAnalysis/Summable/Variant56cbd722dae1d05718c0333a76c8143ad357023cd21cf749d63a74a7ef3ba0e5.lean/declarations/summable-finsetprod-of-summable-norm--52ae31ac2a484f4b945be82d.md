# summable_finsetProd_of_summable_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af9034db-93cf-4c39-9e9f-ba414d55be41",
  "kind": "lemma",
  "lexical_name": "summable_finsetProd_of_summable_norm",
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
  "slug": "summable-finsetprod-of-summable-norm--52ae31ac2a484f4b945be82d",
  "source": {
    "blob": "e4df3ae6fbf63fffc3feaa89f721ab08a8f319c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 212,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52ae31ac2a484f4b945be82dc434080c69cbddfff04f7c6a645fca6280159a7a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af9034db-93cf-4c39-9e9f-ba414d55be41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_finsetProd_of_summable_norm [CompleteSpace R] (hf : Summable (fun i ↦ ‖f i‖)) :
    Summable (fun s ↦ ∏ i ∈ s, f i) :=
  (summable_finsetProd_of_summable_nonneg (fun _ ↦ norm_nonneg _) hf).of_norm_bounded
    fun _ ↦ Finset.norm_prod_le _ _

@[deprecated (since := "2026-04-08")]
alias summable_finset_prod_of_summable_norm := summable_finsetProd_of_summable_norm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant56cbd722dae1d05718c0333a76c8143ad357023cd21cf749d63a74a7ef3ba0e5.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4df3ae6fbf63fffc3feaa89f721ab08a8f319c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
