# tendsto_tsum_powerSeries_nhdsWithin_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f293afc-fe96-5a31-6bb6-42701875dd0b",
  "kind": "theorem",
  "lexical_name": "tendsto_tsum_powerSeries_nhdsWithin_lt",
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
  "slug": "tendsto-tsum-powerseries-nhdswithin-lt--0aa6281c61d3050c84777d11",
  "source": {
    "blob": "2fad3fb8daf05e5012118815c8ec582c68b0ca7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 251,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0aa6281c61d3050c84777d115b6aa8c40872fbf44acaec51d1d78bfe661beb0e",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f293afc-fe96-5a31-6bb6-42701875dd0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_tsum_powerSeries_nhdsWithin_lt
    (h : Tendsto (fun n ↦ ∑ i ∈ range n, f i) atTop (𝓝 l)) :
    Tendsto (fun z ↦ ∑' n, f n * z ^ n) ((𝓝[<] 1).map ofReal) (𝓝 l) :=
  (tendsto_tsum_powerSeries_nhdsWithin_stolzSet (M := 2) h).mono_left
    (nhdsWithin_lt_le_nhdsWithin_stolzSet one_lt_two)

end Complex

namespace Real

open Complex

variable {f : ℕ → ℝ} {l : ℝ}

/-- **Abel's limit theorem**. Given a real power series converging at 1, the corresponding function
is continuous at 1 when approaching 1 from the left. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AbelLimit/Variant8a8a95cb3e14b6627693af0f80ccb40d3c4add1ba3e41d6f71e517c786ddbceb.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fad3fb8daf05e5012118815c8ec582c68b0ca7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
