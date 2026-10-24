# Anonymous macro_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6203c23228cc55d8a79351ce582fd34dc3f39a1161c6e5f67069d0d110cc96a",
  "kind": "macro_rules",
  "lexical_name": null,
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
  "slug": "macro-rules--4d49a692bae509faabbc0172",
  "source": {
    "blob": "5aad6c3d9c187728187182970f6ea21b70617cc2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Leibniz/Variantf677433309cdc389a3f272ea7718f64b8d9f8f5945f11974f59667fc4218c8ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d49a692bae509faabbc01724b043c7d10059eb95cad73261d5cb336fa483769",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Leibniz/Variantf677433309cdc389a3f272ea7718f64b8d9f8f5945f11974f59667fc4218c8ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6203c23228cc55d8a79351ce582fd34dc3f39a1161c6e5f67069d0d110cc96a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

open Filter Set

open scoped Classical BigOperators Topology Real

/-- This theorem establishes **Leibniz's series for `π`**: The alternating sum of the reciprocals
  of the odd numbers is `π/4`. Note that this is a conditionally rather than absolutely convergent
  series. The main tool that this proof uses is the Mean Value Theorem (specifically avoiding the
  Fundamental Theorem of Calculus).

  Intuitively, the theorem holds because Leibniz's series is the Taylor series of `arctan x`
  centered about `0` and evaluated at the value `x = 1`. Therefore, much of this proof consists of
  reasoning about a function
    `f := arctan x - ∑ i in Finset.range k, (-(1:ℝ))^i * x^(2*i+1) / (2*i+1)`,
  the difference between `arctan` and the `k`-th partial sum of its Taylor series. Some ingenuity is
  required due to the fact that the Taylor series is not absolutely convergent at `x = 1`.

  This proof requires a bound on `f 1`, the key idea being that `f 1` can be split as the sum of
  `f 1 - f u` and `f u`, where `u` is a sequence of values in [0,1], carefully chosen such that
  each of these two terms can be controlled (in different ways).

  We begin the proof by (1) introducing that sequence `u` and then proving that another sequence
  constructed from `u` tends to `0` at `+∞`. After (2) converting the limit in our goal to an
  inequality, we (3) introduce the auxiliary function `f` defined above. Next, we (4) compute the
  derivative of `f`, denoted by `f'`, first generally and then on each of two subintervals of [0,1].
  We then (5) prove a bound for `f'`, again both generally as well as on each of the two
  subintervals. Finally, we (6) apply the Mean Value Theorem twice, obtaining bounds on `f 1 - f u`
  and `f u - f 0` from the bounds on `f'` (note that `f 0 = 0`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Leibniz/Variantf677433309cdc389a3f272ea7718f64b8d9f8f5945f11974f59667fc4218c8ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Leibniz/Variantf677433309cdc389a3f272ea7718f64b8d9f8f5945f11974f59667fc4218c8ca.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aad6c3d9c187728187182970f6ea21b70617cc2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
