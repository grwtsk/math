# transition_involution_on_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4576d03e-38f5-95dd-7230-8ae9cc4d1bf7",
  "kind": "theorem",
  "lexical_name": "transition_involution_on_image",
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
  "slug": "transition-involution-on-image--b77be5a87de0acdb5ba8e194",
  "source": {
    "blob": "34b9958f0e469f0dcd228293f0362c5add26a550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b77be5a87de0acdb5ba8e194e049e6b86ceeb74048a03e2c0c88f04a9234644f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4576d03e-38f5-95dd-7230-8ae9cc4d1bf7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transition_involution_on_image (g : Move)
    (h : Function.Involutive (step g)) (x : State) :
    (C.transition g).mulVec ((C.transition g).mulVec (C.observe x)) = C.observe x := by
  rw [← C.observe_step, ← C.observe_step, h]

variable [DecidableEq Basis]

/-- Independence of the retained readout functions makes transport coefficients
unique and upgrades a source involution to a matrix involution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b9958f0e469f0dcd228293f0362c5add26a550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
