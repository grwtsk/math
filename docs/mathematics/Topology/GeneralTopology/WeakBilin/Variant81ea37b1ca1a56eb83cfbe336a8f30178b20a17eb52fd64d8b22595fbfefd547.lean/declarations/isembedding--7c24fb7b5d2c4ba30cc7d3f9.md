# isEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:772696b1-1c2a-04e5-566b-c9b04f29ad37",
  "kind": "theorem",
  "lexical_name": "isEmbedding",
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
  "slug": "isembedding--7c24fb7b5d2c4ba30cc7d3f9",
  "source": {
    "blob": "3828a2b288a0e43b9dca6f8ed122a5f4a7f17824",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c24fb7b5d2c4ba30cc7d3f97c4cda20c67451c28e16087bbe613ebcfa82bc47",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:772696b1-1c2a-04e5-566b-c9b04f29ad37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmbedding {B : E →ₗ[𝕜] F →ₗ[𝕜] 𝕜} (hB : Function.Injective B) :
    IsEmbedding fun (x : WeakBilin B) y => B x y :=
  Function.Injective.isEmbedding_induced <| LinearMap.coe_injective.comp hB

@[deprecated (since := "2024-10-26")]
alias embedding := isEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakBilin/Variant81ea37b1ca1a56eb83cfbe336a8f30178b20a17eb52fd64d8b22595fbfefd547.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3828a2b288a0e43b9dca6f8ed122a5f4a7f17824` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
