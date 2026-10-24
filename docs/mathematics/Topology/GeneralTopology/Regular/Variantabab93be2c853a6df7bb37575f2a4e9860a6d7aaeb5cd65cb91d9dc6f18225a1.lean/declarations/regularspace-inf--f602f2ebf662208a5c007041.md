# RegularSpace.inf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d06aa7ef-5434-74ff-07a8-34aca1081586",
  "kind": "theorem",
  "lexical_name": "RegularSpace.inf",
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
  "slug": "regularspace-inf--f602f2ebf662208a5c007041",
  "source": {
    "blob": "71c36b384d864adad1815ba38d0f8e3435e701eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 283,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f602f2ebf662208a5c00704107f9476797b49de39b7b3523c95eb2b935b2b0e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d06aa7ef-5434-74ff-07a8-34aca1081586`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RegularSpace.inf {X} {t₁ t₂ : TopologicalSpace X} (h₁ : @RegularSpace X t₁)
    (h₂ : @RegularSpace X t₂) : @RegularSpace X (t₁ ⊓ t₂) := by
  rw [inf_eq_iInf]
  exact regularSpace_iInf (Bool.forall_bool.2 ⟨h₂, h₁⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c36b384d864adad1815ba38d0f8e3435e701eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
