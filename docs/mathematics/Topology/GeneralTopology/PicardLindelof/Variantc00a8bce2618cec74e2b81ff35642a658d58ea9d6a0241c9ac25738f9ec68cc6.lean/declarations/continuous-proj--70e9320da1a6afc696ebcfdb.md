# continuous_proj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b39c3387fa33a660bf7b54c9db2cbbc032069a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b91333c-f844-192c-8a3e-10d6abea9618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11a8a5f1-ff42-d7e9-ba2a-0485fa6bf6de",
  "kind": "theorem",
  "lexical_name": "continuous_proj",
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
  "slug": "continuous-proj--70e9320da1a6afc696ebcfdb",
  "source": {
    "blob": "2b39c3387fa33a660bf7b54c9db2cbbc032069a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 148,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70e9320da1a6afc696ebcfdb9ccb8e635d8e69ae8d9808212651748883a3226f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11a8a5f1-ff42-d7e9-ba2a-0485fa6bf6de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_proj : Continuous v.proj :=
  continuous_projIcc

/-- The space of curves $γ \colon [t_{\min}, t_{\max}] \to E$ such that $γ(t₀) = x₀$ and $γ$ is
Lipschitz continuous with constant $C$. The map sending $γ$ to
$\mathbf Pγ(t)=x₀ + ∫_{t₀}^{t} v(τ, γ(τ))\,dτ$ is a contracting map on this space, and its fixed
point is a solution of the ODE $\dot x=v(t, x)$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variantc00a8bce2618cec74e2b81ff35642a658d58ea9d6a0241c9ac25738f9ec68cc6.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b39c3387fa33a660bf7b54c9db2cbbc032069a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
