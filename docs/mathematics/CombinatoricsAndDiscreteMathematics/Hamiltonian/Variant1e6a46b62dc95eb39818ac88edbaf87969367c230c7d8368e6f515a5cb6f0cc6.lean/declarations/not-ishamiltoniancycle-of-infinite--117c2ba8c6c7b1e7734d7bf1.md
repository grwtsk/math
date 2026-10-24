# not_isHamiltonianCycle_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:508dfdd7-8989-add8-ef47-d2bf13477d3d",
  "kind": "lemma",
  "lexical_name": "not_isHamiltonianCycle_of_infinite",
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
  "slug": "not-ishamiltoniancycle-of-infinite--117c2ba8c6c7b1e7734d7bf1",
  "source": {
    "blob": "e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:117c2ba8c6c7b1e7734d7bf16acd4881b108686939f51dea45b717a99c0d8a28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508dfdd7-8989-add8-ef47-d2bf13477d3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma not_isHamiltonianCycle_of_infinite [h : Infinite α] : ¬ p.IsHamiltonianCycle := by
  contrapose! h; exact h.finite

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
