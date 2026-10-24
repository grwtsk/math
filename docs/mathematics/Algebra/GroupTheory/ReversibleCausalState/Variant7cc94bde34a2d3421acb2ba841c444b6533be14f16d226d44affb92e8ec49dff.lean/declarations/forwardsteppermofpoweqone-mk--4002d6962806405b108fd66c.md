# forwardStepPermOfPowEqOne_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29191cd5-643a-aa1e-fd9a-7082796137fd",
  "kind": "theorem",
  "lexical_name": "forwardStepPermOfPowEqOne_mk",
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
  "slug": "forwardsteppermofpoweqone-mk--4002d6962806405b108fd66c",
  "source": {
    "blob": "d867e425136f496222bc90e44c382b4fadcac0a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 284,
    "path": "GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4002d6962806405b108fd66ca656457053511fa75dbb76a81a024c91d675b81b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29191cd5-643a-aa1e-fd9a-7082796137fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardStepPermOfPowEqOne_mk
    (G : ReversibleSystem State Resolution)
    {N : Nat}
    (hNpos : 0 < N)
    (hN : G.step ^ N = 1)
    (x : State) :
    G.forwardStepPermOfPowEqOne hNpos hN
        (Quotient.mk G.forwardSetoid x) =
      Quotient.mk G.forwardSetoid (G.step x) :=
  rfl

/-- Every permutation of a finite state type has forward = bilateral kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ReversibleCausalState/Variant7cc94bde34a2d3421acb2ba841c444b6533be14f16d226d44affb92e8ec49dff.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d867e425136f496222bc90e44c382b4fadcac0a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
