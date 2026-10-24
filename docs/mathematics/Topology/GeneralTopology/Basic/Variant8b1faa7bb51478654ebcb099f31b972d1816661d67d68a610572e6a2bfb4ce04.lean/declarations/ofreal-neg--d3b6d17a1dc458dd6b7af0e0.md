# ofReal_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a66df0a3-8d00-7d31-a283-d4411095041f",
  "kind": "theorem",
  "lexical_name": "ofReal_neg",
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
  "slug": "ofreal-neg--d3b6d17a1dc458dd6b7af0e0",
  "source": {
    "blob": "713390e029f6f4e754e1598acec0f06945e4df5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3b6d17a1dc458dd6b7af0e0aee9740c10586725d77cfa4946928db58f9f9e00",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66df0a3-8d00-7d31-a283-d4411095041f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofReal_neg (r : ℝ) : ((-r : ℝ) : K) = -r :=
  algebraMap.coe_neg r
#align is_R_or_C.of_real_neg IsROrC.ofReal_neg

@[simp, norm_cast, isROrC_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713390e029f6f4e754e1598acec0f06945e4df5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
