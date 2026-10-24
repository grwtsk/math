# BooleanNetwork.AsynchronousNetwork.reachable_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:400d1ed1-c685-d33f-baaf-2348cb8e11e7",
  "kind": "theorem",
  "lexical_name": "BooleanNetwork.AsynchronousNetwork.reachable_trans",
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
  "slug": "booleannetwork-asynchronousnetwork-reachable-trans--d3e61117be973930d0d8dc16",
  "source": {
    "blob": "88c77aa147a9ee827081c807a06d77050d116eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3e61117be973930d0d8dc163547fb441a09abdd08f0dbbd91ab684729314533",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:400d1ed1-c685-d33f-baaf-2348cb8e11e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem BooleanNetwork.AsynchronousNetwork.reachable_trans {n : Nat}
    (N : BooleanNetwork.AsynchronousNetwork n)
    {x y z : Hypercube.Point n}
    (hxy : N.Reachable x y)
    (hyz : N.Reachable y z) :
    N.Reachable x z := by
  rcases hxy with ⟨left, hleft⟩
  rcases hyz with ⟨right, hright⟩
  refine ⟨left ++ right, ?_⟩
  rw [BooleanNetwork.AsynchronousNetwork.run_append, hleft]
  exact hright

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant53130218f8db27a5490a026ed202c2299e3c7d8d1741305e3d627198b0c07e67.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88c77aa147a9ee827081c807a06d77050d116eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
