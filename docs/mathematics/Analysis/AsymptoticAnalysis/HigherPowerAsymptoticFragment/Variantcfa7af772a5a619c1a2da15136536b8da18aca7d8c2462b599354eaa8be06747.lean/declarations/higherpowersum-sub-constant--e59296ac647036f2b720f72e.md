# higherPowerSum_sub_constant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a46e24541bd04f69583776ef796aa3539a4ba64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bcfe4940-8a1f-dbba-3049-3ecea49d2d98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:069202bd-3515-f004-c29b-112bb6fda70c",
  "kind": "theorem",
  "lexical_name": "higherPowerSum_sub_constant",
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
  "slug": "higherpowersum-sub-constant--e59296ac647036f2b720f72e",
  "source": {
    "blob": "7a46e24541bd04f69583776ef796aa3539a4ba64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e59296ac647036f2b720f72e8585709d96506124d2b7dba4c970bdb0497ea8dd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:069202bd-3515-f004-c29b-112bb6fda70c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPowerSum_sub_constant (A : ℝ) (hA : 1 ≤ A) :
    higherPowerSum A - higherPowerConstant =
      ∑' q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k},
        Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
          (sourceCorrelation explicitSecondDerivative A
            ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) - 1) := by
  rw [higherPowerSum, higherPowerConstant, ← Summable.tsum_sub (higherPower_correlation_summable A hA)
    primeHigherWeight_summable]
  apply tsum_congr
  intro q
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerAsymptoticFragment/Variantcfa7af772a5a619c1a2da15136536b8da18aca7d8c2462b599354eaa8be06747.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a46e24541bd04f69583776ef796aa3539a4ba64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
