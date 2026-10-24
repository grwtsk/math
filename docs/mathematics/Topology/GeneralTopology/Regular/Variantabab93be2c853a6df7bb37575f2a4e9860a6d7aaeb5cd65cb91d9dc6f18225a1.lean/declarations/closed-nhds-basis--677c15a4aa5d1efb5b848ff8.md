# closed_nhds_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45bb0e30-1404-2e1f-4d66-933e3162ee75",
  "kind": "theorem",
  "lexical_name": "closed_nhds_basis",
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
  "slug": "closed-nhds-basis--677c15a4aa5d1efb5b848ff8",
  "source": {
    "blob": "71c36b384d864adad1815ba38d0f8e3435e701eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:677c15a4aa5d1efb5b848ff8f33829e2648399c11ad21b80e46e70bff4bc7c5e",
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

Occurrence: `result:45bb0e30-1404-2e1f-4d66-933e3162ee75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_nhds_basis (x : X) : (𝓝 x).HasBasis (fun s : Set X => s ∈ 𝓝 x ∧ IsClosed s) id :=
  hasBasis_self.2 fun _ => exists_mem_nhds_isClosed_subset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variantabab93be2c853a6df7bb37575f2a4e9860a6d7aaeb5cd65cb91d9dc6f18225a1.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c36b384d864adad1815ba38d0f8e3435e701eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
