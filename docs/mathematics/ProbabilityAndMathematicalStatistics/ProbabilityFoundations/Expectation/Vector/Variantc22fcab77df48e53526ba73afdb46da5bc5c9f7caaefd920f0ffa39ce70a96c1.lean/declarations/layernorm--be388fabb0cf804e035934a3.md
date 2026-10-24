# layerNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3033c9129f6d7660cf51988fa3ce3ccb94785eece10709eaa1d0937b571ef11c",
  "kind": "def",
  "lexical_name": "layerNorm",
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
  "slug": "layernorm--be388fabb0cf804e035934a3",
  "source": {
    "blob": "f23ce61f8848de0853a45d35af011df66345fb58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 131,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be388fabb0cf804e035934a397bf67cf6c7feeeb36c9628484da81c17bf04aab",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3033c9129f6d7660cf51988fa3ce3ccb94785eece10709eaa1d0937b571ef11c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def layerNorm (v : AffineVector) (gamma beta : List ℚ) (eps : ℚ) : AffineVector :=
  -- 1. Center: x - μ
  let centered_v := centered v

  -- 2. Variance: mean((x - μ)²)
  let var := variance v

  -- 3. Add epsilon and sqrt
  let var_eps := AffineForm.add var (AffineForm.const eps)
  let std := AffineForm.sqrt var_eps

  -- 4. Invert: 1/√(σ² + ε)
  let inv_std := AffineForm.inv std

  -- 5. Normalize and scale
  List.zipWith3 (fun xi g b =>
    let normalized := AffineForm.mul xi inv_std
    let scaled := AffineForm.scale g normalized
    AffineForm.add scaled (AffineForm.const b)
  ) centered_v gamma beta

/-! ## Softmax Components -/

/-- Compute exp(x_i - max(x)) for numerical stability -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Vector/Variantc22fcab77df48e53526ba73afdb46da5bc5c9f7caaefd920f0ffa39ce70a96c1.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f23ce61f8848de0853a45d35af011df66345fb58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
