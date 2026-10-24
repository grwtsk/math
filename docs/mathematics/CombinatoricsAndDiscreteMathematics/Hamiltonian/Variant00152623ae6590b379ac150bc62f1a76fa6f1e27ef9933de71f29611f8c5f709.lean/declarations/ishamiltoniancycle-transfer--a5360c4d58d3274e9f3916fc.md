# isHamiltonianCycle_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d33ff03-f84d-3743-616a-d9911f3c0cbf",
  "kind": "theorem",
  "lexical_name": "isHamiltonianCycle_transfer",
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
  "slug": "ishamiltoniancycle-transfer--a5360c4d58d3274e9f3916fc",
  "source": {
    "blob": "fc83610a89aae3f8def8f10ecc71713ec4a7b066",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 239,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5360c4d58d3274e9f3916fc8d37cc468328082af064c59ae0f86e72bc18473e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d33ff03-f84d-3743-616a-d9911f3c0cbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHamiltonianCycle_transfer [Finite α] {H : SimpleGraph α} {p : G.Walk v v} (h) :
    (p.transfer H h).IsHamiltonianCycle ↔ p.IsHamiltonianCycle := by
  cases nonempty_fintype α
  simp [isHamiltonianCycle_iff_isCycle_and_length_eq]

alias ⟨_, IsHamiltonianCycle.transfer⟩ := isHamiltonianCycle_transfer

end Walk

variable [Fintype α]

/-- A Hamiltonian graph is a graph that contains a Hamiltonian cycle.

This is equivalent to there being an Hamiltonian cycle based at each vertex.
See `IsHamiltonian.exists_isHamiltonianCycle`.

By convention, the singleton graph is considered to be Hamiltonian and the empty graph is not. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant00152623ae6590b379ac150bc62f1a76fa6f1e27ef9933de71f29611f8c5f709.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc83610a89aae3f8def8f10ecc71713ec4a7b066` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
