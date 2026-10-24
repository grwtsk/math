# hasDerivAt_exp_smul_const_of_mem_ball'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:918247f5-109e-2ea2-18c8-592a2fa9432c",
  "kind": "theorem",
  "lexical_name": "hasDerivAt_exp_smul_const_of_mem_ball'",
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
  "slug": "hasderivat-exp-smul-const-of-mem-ball--e04cdbbff5b4fe7065e1cedc",
  "source": {
    "blob": "dd4e4b17b880065d3b1ee9b604a4f0dbbfc11f02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 366,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e04cdbbff5b4fe7065e1cedcdf31aea2ff5cabdd764ec82ed9e61f5bab2f4187",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:918247f5-109e-2ea2-18c8-592a2fa9432c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasDerivAt_exp_smul_const_of_mem_ball' (x : 𝔸) (t : 𝕂)
    (htx : t • x ∈ EMetric.ball (0 : 𝔸) (expSeries 𝕂 𝔸).radius) :
    HasDerivAt (fun u : 𝕂 => exp 𝕂 (u • x)) (x * exp 𝕂 (t • x)) t :=
  (hasStrictDerivAt_exp_smul_const_of_mem_ball' x t htx).hasDerivAt
#align has_deriv_at_exp_smul_const_of_mem_ball' hasDerivAt_exp_smul_const_of_mem_ball'

end MemBall

section IsROrC

variable [IsROrC 𝕂]

variable [NormedCommRing 𝕊] [NormedRing 𝔸]

variable [NormedAlgebra 𝕂 𝕊] [NormedAlgebra 𝕂 𝔸] [Algebra 𝕊 𝔸] [ContinuousSMul 𝕊 𝔸]

variable [IsScalarTower 𝕂 𝕊 𝔸]

variable [CompleteSpace 𝔸]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Exponential/Variantab8a47ac5a78e47474d822d790002fe3e113a500f5bb8ca4218fec3075bce85b.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4e4b17b880065d3b1ee9b604a4f0dbbfc11f02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
