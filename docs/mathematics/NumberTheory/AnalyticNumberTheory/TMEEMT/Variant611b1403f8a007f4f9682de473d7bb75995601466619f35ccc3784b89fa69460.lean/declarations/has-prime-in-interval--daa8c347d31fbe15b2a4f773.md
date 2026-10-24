# has_prime_in_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e53c083b-b572-2af1-c196-5d487ea28a09",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:249bd81a-dce8-f6ed-84da-57a21cb54135",
  "kind": "theorem",
  "lexical_name": "has_prime_in_interval",
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
  "slug": "has-prime-in-interval--daa8c347d31fbe15b2a4f773",
  "source": {
    "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1294,
    "line": 1288,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daa8c347d31fbe15b2a4f77358f5405c595be0256adcfa0e3fc415c2fa6e3cd1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:249bd81a-dce8-f6ed-84da-57a21cb54135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1288–1294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem has_prime_in_interval (x : ℝ) (hx : x ≥ 4) (RH : RiemannHypothesis) :
    HasPrimeInInterval (x - (22 / 25) * sqrt x * log x) ((22 / 25) * sqrt x * log x) := by sorry

end CarneiroEtAl2019RH

namespace KadiriLumley

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean#L1288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec90d8c858baca8b01364abdfa948bb05f941a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
