# bilateralSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58609ac62a5451416c9bdf31a4d60a57482d0a0d4d2af9d9f8ea24e0937d53ed",
  "kind": "def",
  "lexical_name": "bilateralSetoid",
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
  "slug": "bilateralsetoid--512b8fa51142378a2013f58e",
  "source": {
    "blob": "d867e425136f496222bc90e44c382b4fadcac0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:512b8fa51142378a2013f58e49d47f476ca2add28c0bec9a03b0788712e926f3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58609ac62a5451416c9bdf31a4d60a57482d0a0d4d2af9d9f8ea24e0937d53ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bilateralSetoid
    (G : ReversibleSystem State Resolution) : Setoid State where
  r := G.BilateralCausalEquivalent
  iseqv := {
    refl := by
      intro x
      exact ⟨fun _ _ => rfl, fun _ _ => rfl⟩
    symm := by
      intro x y h
      exact
        ⟨fun t ρ => (h.1 t ρ).symm,
          fun t ρ => (h.2 t ρ).symm⟩
    trans := by
      intro x y z hxy hyz
      exact
        ⟨fun t ρ => (hxy.1 t ρ).trans (hyz.1 t ρ),
          fun t ρ => (hxy.2 t ρ).trans (hyz.2 t ρ)⟩
  }

/-- Forward-only causal quotient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d867e425136f496222bc90e44c382b4fadcac0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
