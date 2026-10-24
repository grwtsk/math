# bernsteinApproximation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c96eda50819ad3ec2d9101b7c1463c59e80d7ac0352c4eba98180903b0f3058d",
  "kind": "def",
  "lexical_name": "bernsteinApproximation",
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
  "slug": "bernsteinapproximation--0e697f9527ee74a3c4dfe4d0",
  "source": {
    "blob": "c30244dc17291af4c94971f159a59acefacb0d06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e697f9527ee74a3c4dfe4d08d745cf639fa2ffcb1716107acbb0ed0d138229c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c96eda50819ad3ec2d9101b7c1463c59e80d7ac0352c4eba98180903b0f3058d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bernsteinApproximation (n : ℕ) (f : C(I, E)) : C(I, E) :=
  ∑ k : Fin (n + 1), bernstein n k • .const _ (f k/ₙ)

/-!
We now set up some of the basic machinery of the proof that the Bernstein approximations
converge uniformly.

A key player is the set `S f ε h n x`,
for some function `f : C(I, E)`, `h : 0 < ε`, `n : ℕ` and `x : I`.

This is the set of points `k` in `Fin (n+1)` such that
`k/n` is within `δ` of `x`, where `δ` is the modulus of uniform continuity for `f`,
chosen so `‖f x - f y‖ < ε/2` when `|x - y| < δ`.

We show that if `k ∉ S`, then `1 ≤ δ^-2 * (x - k/n)^2`.
-/

namespace bernsteinApproximation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bernstein/Variantc616c54b9d0abcc6fc82f10bb9b06cfbca81943582b678c57b3659763faf4b66.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c30244dc17291af4c94971f159a59acefacb0d06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
