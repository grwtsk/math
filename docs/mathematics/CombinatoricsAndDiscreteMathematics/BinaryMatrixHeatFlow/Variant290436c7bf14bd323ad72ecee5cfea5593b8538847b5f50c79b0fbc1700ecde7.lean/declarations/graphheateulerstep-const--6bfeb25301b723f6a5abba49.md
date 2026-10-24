# graphHeatEulerStep_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9099c3e-0224-0438-3ac3-2f0715879214",
  "kind": "theorem",
  "lexical_name": "graphHeatEulerStep_const",
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
  "slug": "graphheateulerstep-const--6bfeb25301b723f6a5abba49",
  "source": {
    "blob": "8baddd537cc14f42f18aba8358b75e5c95ece0f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variant290436c7bf14bd323ad72ecee5cfea5593b8538847b5f50c79b0fbc1700ecde7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bfeb25301b723f6a5abba49adcf0eb66b3ed7e29666a3bf3f38daf799cd0b73",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variant290436c7bf14bd323ad72ecee5cfea5593b8538847b5f50c79b0fbc1700ecde7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9099c3e-0224-0438-3ac3-2f0715879214`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem graphHeatEulerStep_const
    {V : Type}
    [Fintype V]
    (state : V → PaddedBitState)
    (Γ : GammaWeight)
    (ε η c : ℝ) :
    graphHeatEulerStep state Γ ε η (fun _ : V => c) = fun _ => c := by
  funext x
  simp [graphHeatEulerStep, heatEulerStep]

/--
Quasi-commutation of coarse and fine Laplacians with a zoom-out map.

The zoom map is required to preserve subtraction and scalar multiplication.
Those linearity hypotheses are proof-relevant: without them the Euler-step
compatibility theorem would not follow from Laplacian quasi-commutation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variant290436c7bf14bd323ad72ecee5cfea5593b8538847b5f50c79b0fbc1700ecde7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BinaryMatrixHeatFlow/Variant290436c7bf14bd323ad72ecee5cfea5593b8538847b5f50c79b0fbc1700ecde7.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8baddd537cc14f42f18aba8358b75e5c95ece0f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
