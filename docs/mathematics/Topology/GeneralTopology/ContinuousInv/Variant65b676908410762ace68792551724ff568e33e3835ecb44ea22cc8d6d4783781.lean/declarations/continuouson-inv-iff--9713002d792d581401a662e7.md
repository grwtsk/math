# continuousOn_inv_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed91b3b8-1a25-2274-2d0e-1354758a8820",
  "kind": "lemma",
  "lexical_name": "continuousOn_inv_iff",
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
  "slug": "continuouson-inv-iff--9713002d792d581401a662e7",
  "source": {
    "blob": "83e6d050477a09ef97206b992e183fbd628e81dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 237,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousInv/Variant65b676908410762ace68792551724ff568e33e3835ecb44ea22cc8d6d4783781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9713002d792d581401a662e7e7d2cf63fda8b7f711ac3c01e195a2a570ccb565",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousInv/Variant65b676908410762ace68792551724ff568e33e3835ecb44ea22cc8d6d4783781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed91b3b8-1a25-2274-2d0e-1354758a8820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_inv_iff : ContinuousOn f⁻¹ s ↔ ContinuousOn f s :=
  (Homeomorph.inv G).comp_continuousOn_iff _ _

@[to_additive] alias ⟨Continuous.of_inv, _⟩ := continuous_inv_iff
@[to_additive] alias ⟨ContinuousAt.of_inv, _⟩ := continuousAt_inv_iff
@[to_additive] alias ⟨ContinuousOn.of_inv, _⟩ := continuousOn_inv_iff

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousInv/Variant65b676908410762ace68792551724ff568e33e3835ecb44ea22cc8d6d4783781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousInv/Variant65b676908410762ace68792551724ff568e33e3835ecb44ea22cc8d6d4783781.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83e6d050477a09ef97206b992e183fbd628e81dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
