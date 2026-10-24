# Set.Finite.cofinite_inf_principal_diff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:416e1d39-b5a1-dabb-4cef-37a0e96bc25b",
  "kind": "lemma",
  "lexical_name": "Set.Finite.cofinite_inf_principal_diff",
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
  "slug": "set-finite-cofinite-inf-principal-diff--56fc22100839802bd008187f",
  "source": {
    "blob": "f48d3b5e6745dd555b217edff09c39d02169fdbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 209,
    "path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56fc22100839802bd008187f385216bb0b7d7e6fbce582b863022ffa42386616",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:416e1d39-b5a1-dabb-4cef-37a0e96bc25b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.Finite.cofinite_inf_principal_diff {s t : Set α} (ht : t.Finite) :
    cofinite ⊓ 𝓟 (s \ t) = cofinite ⊓ 𝓟 s := by
  rw [diff_eq, ← inf_principal, ← inf_assoc, inf_right_comm, ht.cofinite_inf_principal_compl]

/-- For natural numbers the filters `Filter.cofinite` and `Filter.atTop` coincide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48d3b5e6745dd555b217edff09c39d02169fdbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
