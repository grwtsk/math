# lowestEigenvalue_failure_crossing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:642d98da-c18b-bc8b-24e9-cde377cebd04",
  "kind": "theorem",
  "lexical_name": "lowestEigenvalue_failure_crossing",
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
  "slug": "lowesteigenvalue-failure-crossing--ea6bdb1711479fba0863858b",
  "source": {
    "blob": "b94d5889eb28f53510db1862d0e13213e5b7abd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 142,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea6bdb1711479fba0863858bd394785e1cb1034eb611eb1a66f9450bac6deada",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:642d98da-c18b-bc8b-24e9-cde377cebd04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowestEigenvalue_failure_crossing {ell : ℝ → ℝ}
    (hell : LowestEigenvalueProfile ell) (hfailure : ¬ GlobalNonnegative ell) :
    ∃ b c : ℝ, 0 < c ∧ c < b ∧ ell c = 0 ∧ ell b < 0 :=
  zero_of_not_global hell.1 hell.2 hfailure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt04/Variantcd4412c20efe2b3e178c44be9e2b768ca69a478c1be76a354f101ec2830ea3f6.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94d5889eb28f53510db1862d0e13213e5b7abd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
