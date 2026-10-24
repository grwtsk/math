# ext_dual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27c7fc0a-d7f3-d797-8f17-c943c16d7c66",
  "kind": "lemma",
  "lexical_name": "ext_dual",
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
  "slug": "ext-dual--f85a85503641dfb11ef8dc62",
  "source": {
    "blob": "08afe696b924b1e67cd23eb36e392347be564b53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f85a85503641dfb11ef8dc62d3a247c998877e809da1ca184c94cccf1255b103",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27c7fc0a-d7f3-d797-8f17-c943c16d7c66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_dual [H : SeparatingDual 𝕜₂ F] {A B : E →SWOT[σ] F}
    (h : ∀ x (y : F⋆), y (A x) = y (B x)) : A = B := by
  simp_rw [ContinuousLinearMapWOT.ext_iff, ← (separatingDual_iff_injective.mp H).eq_iff,
    LinearMap.ext_iff]
  exact h

section SMul

variable {S : Type*} [DistribSMul S F] [SMulCommClass 𝕜₂ S F] [ContinuousConstSMul S F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant5d84bbf6bc693fc8192d1ed2f6fa0f48224189bc45f248468a5b5e6c600d987e.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08afe696b924b1e67cd23eb36e392347be564b53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
