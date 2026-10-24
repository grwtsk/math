# frontier_setOfPred_lt_im

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72d4301f3ffaad4178bfc8412b587a48bb6c0793",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a2/a2a476e7a62558cfff2155db20636763a77eb5b80eb4c76ed3eb287febc45cbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:18dca6d4-e8cd-751b-b0ea-13d97ac93a4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd28cbd5-2caa-f624-84e5-553484d56fa1",
  "kind": "theorem",
  "lexical_name": "frontier_setOfPred_lt_im",
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
  "slug": "frontier-setofpred-lt-im--d48e18b57c2a87856c7e5534",
  "source": {
    "blob": "72d4301f3ffaad4178bfc8412b587a48bb6c0793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 186,
    "path": "GRWTSK/Topology/GeneralTopology/ReImTopology/Varianta2a476e7a62558cfff2155db20636763a77eb5b80eb4c76ed3eb287febc45cbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d48e18b57c2a87856c7e5534f063394fb99d455b6e2498332ae384ab0c9043dc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ReImTopology/Varianta2a476e7a62558cfff2155db20636763a77eb5b80eb4c76ed3eb287febc45cbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd28cbd5-2caa-f624-84e5-553484d56fa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frontier_setOfPred_lt_im (a : ℝ) : frontier { z : ℂ | a < z.im } = { z | z.im = a } := by
  simpa only [frontier_Ioi] using! frontier_preimage_im (Ioi a)

@[deprecated (since := "2026-07-09")]
alias frontier_setOf_lt_im := frontier_setOfPred_lt_im

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ReImTopology/Varianta2a476e7a62558cfff2155db20636763a77eb5b80eb4c76ed3eb287febc45cbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ReImTopology/Varianta2a476e7a62558cfff2155db20636763a77eb5b80eb4c76ed3eb287febc45cbd.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72d4301f3ffaad4178bfc8412b587a48bb6c0793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
