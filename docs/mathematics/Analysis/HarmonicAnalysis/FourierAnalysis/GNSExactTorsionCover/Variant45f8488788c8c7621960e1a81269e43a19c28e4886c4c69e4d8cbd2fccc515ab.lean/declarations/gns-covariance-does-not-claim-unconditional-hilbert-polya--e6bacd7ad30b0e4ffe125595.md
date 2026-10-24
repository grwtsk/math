# gns_covariance_does_not_claim_unconditional_hilbert_polya

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16a126c0fdcfd18b7cb70433bc847b56937b98ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:609d86b2-e02d-c812-88f7-47c02de18624",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:29dc949f-aed0-d245-0e7a-16419259ff62",
  "kind": "theorem",
  "lexical_name": "gns_covariance_does_not_claim_unconditional_hilbert_polya",
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
  "slug": "gns-covariance-does-not-claim-unconditional-hilbert-polya--e6bacd7ad30b0e4ffe125595",
  "source": {
    "blob": "16a126c0fdcfd18b7cb70433bc847b56937b98ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 139,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6bacd7ad30b0e4ffe1255955cc2db7e6193da59525a34086070a52dceac2a1f",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29dc949f-aed0-d245-0e7a-16419259ff62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gns_covariance_does_not_claim_unconditional_hilbert_polya :
    cover.unconditionalHilbertPolyaClaim = false :=
  cover.no_unconditional_hilbert_polya_from_gns_covariance

end GNSFourierInvariantCover

/-- A minimal exact-torsion algebra witness used for default boundary records. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GNSExactTorsionCover/Variant45f8488788c8c7621960e1a81269e43a19c28e4886c4c69e4d8cbd2fccc515ab.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16a126c0fdcfd18b7cb70433bc847b56937b98ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
