# InitialVelocityConditionDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:341947f590be7636f15a8a3ef4eced0b14a2904c12e7451bc16e28bda6c6f483",
  "kind": "structure",
  "lexical_name": "InitialVelocityConditionDecay",
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
  "slug": "initialvelocityconditiondecay--8a17aa8cb003f2ae2204f1a9",
  "source": {
    "blob": "38096ec925d30a439bac43c870652ca158185b11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a17aa8cb003f2ae2204f1a9088627cc4c6a27c8aec1c46b9d7c1b95334b79a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:341947f590be7636f15a8a3ef4eced0b14a2904c12e7451bc16e28bda6c6f483`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InitialVelocityConditionDecay (u₀ : ℝ^n → ℝ^n) : Prop extends
    InitialVelocityCondition u₀ where
  /-- All derivatives of u₀ decay faster than any polynomial (condition 4).
  For any derivative order $m$ and any decay rate $K$, there exists a constant $C$
  such that $\lVert \partial^m u_0(x) \rVert \le C/(1+\lVert x \rVert)^K$. -/
  decay : ∀ m : ℕ, ∀ K : ℝ, ∃ C : ℝ, ∀ x, ‖iteratedFDeriv ℝ m u₀ x‖ ≤ C / (1 + ‖x‖) ^ K

/--
Initial velocity conditions for the periodic Navier-Stokes problem on
$\mathbb{R}^n/\mathbb{Z}^n$.

The velocity must be smooth, divergence-free, and 1-periodic in each coordinate
(condition 8, part 1 in Fefferman's paper).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/NavierStokes/Variant1d68bcc208ee7f9d1102e15745c78eaf02ff0230cff71ffe25353a7ada8914a1.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38096ec925d30a439bac43c870652ca158185b11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
