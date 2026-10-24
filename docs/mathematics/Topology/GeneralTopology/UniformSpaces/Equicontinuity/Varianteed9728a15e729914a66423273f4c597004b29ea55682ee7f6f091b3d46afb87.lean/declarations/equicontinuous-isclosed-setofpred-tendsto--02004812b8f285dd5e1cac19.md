# Equicontinuous.isClosed_setOfPred_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55facd82-c880-1db9-b684-3f6770475319",
  "kind": "theorem",
  "lexical_name": "Equicontinuous.isClosed_setOfPred_tendsto",
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
  "slug": "equicontinuous-isclosed-setofpred-tendsto--02004812b8f285dd5e1cac19",
  "source": {
    "blob": "2cebb90f29c64713bedbc4cc0bf92eaa51283531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1001,
    "line": 990,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02004812b8f285dd5e1cac1979cd0cb9d2e12e4cb4bbb5db2645181b98a2af6c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55facd82-c880-1db9-b684-3f6770475319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 990–1001.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equicontinuous.isClosed_setOfPred_tendsto {l : Filter ι} {F : ι → X → α} {f : X → α}
    (hF : Equicontinuous F) (hf : Continuous f) :
    IsClosed {x | Tendsto (F · x) l (𝓝 (f x))} :=
  closure_subset_iff_isClosed.mp fun x hx ↦
    (hF x).tendsto_of_mem_closure (hf.continuousAt.mono_left inf_le_left) (fun _ ↦ id) hx

@[deprecated (since := "2026-07-09")]
alias Equicontinuous.isClosed_setOf_tendsto := Equicontinuous.isClosed_setOfPred_tendsto

end

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianteed9728a15e729914a66423273f4c597004b29ea55682ee7f6f091b3d46afb87.lean#L990).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cebb90f29c64713bedbc4cc0bf92eaa51283531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
