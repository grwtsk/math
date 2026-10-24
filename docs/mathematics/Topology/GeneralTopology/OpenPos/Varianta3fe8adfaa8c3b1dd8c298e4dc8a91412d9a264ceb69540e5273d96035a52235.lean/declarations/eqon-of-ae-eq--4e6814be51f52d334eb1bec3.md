# eqOn_of_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccf07d03-410b-cd6f-bb2c-c74c1b6bfc09",
  "kind": "theorem",
  "lexical_name": "eqOn_of_ae_eq",
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
  "slug": "eqon-of-ae-eq--4e6814be51f52d334eb1bec3",
  "source": {
    "blob": "b1d27d3f33d7ae9edb3221dcefed453cf6d6da35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e6814be51f52d334eb1bec3d18b703b9b528bf9bd63f03796c680f2751f24df",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccf07d03-410b-cd6f-bb2c-c74c1b6bfc09`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eqOn_of_ae_eq {f g : X → Y} (h : f =ᵐ[μ.restrict s] g) (hf : ContinuousOn f s)
    (hg : ContinuousOn g s) (hU : s ⊆ closure (interior s)) : EqOn f g s :=
  have : interior s ⊆ s := interior_subset
  (eqOn_open_of_ae_eq (ae_restrict_of_ae_restrict_of_subset this h) isOpen_interior (hf.mono this)
        (hg.mono this)).of_subset_closure
    hf hg this hU

variable (μ) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenPos/Varianta3fe8adfaa8c3b1dd8c298e4dc8a91412d9a264ceb69540e5273d96035a52235.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1d27d3f33d7ae9edb3221dcefed453cf6d6da35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
