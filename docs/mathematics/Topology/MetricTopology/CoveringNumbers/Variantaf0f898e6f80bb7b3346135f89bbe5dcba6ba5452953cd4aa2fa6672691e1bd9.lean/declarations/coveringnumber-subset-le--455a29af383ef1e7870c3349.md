# coveringNumber_subset_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57b74083-b89d-fca2-24dc-51baadb457c9",
  "kind": "lemma",
  "lexical_name": "coveringNumber_subset_le",
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
  "slug": "coveringnumber-subset-le--455a29af383ef1e7870c3349",
  "source": {
    "blob": "75163648232b773ef5f67fb1669306b0ae191812",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 376,
    "path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:455a29af383ef1e7870c33494798aae8a5557c178efba46cbc177a699071cf8f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57b74083-b89d-fca2-24dc-51baadb457c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coveringNumber_subset_le (h : A ⊆ B) :
    coveringNumber ε A ≤ coveringNumber (ε / 2) B := calc
  coveringNumber ε A
  _ ≤ packingNumber ε A := coveringNumber_le_packingNumber ε A
  _ = packingNumber (2 * (ε / 2)) A := by ring_nf
  _ ≤ externalCoveringNumber (ε / 2) A :=
    packingNumber_two_mul_le_externalCoveringNumber (ε / 2) A
  _ ≤ externalCoveringNumber (ε / 2) B := externalCoveringNumber_mono_set h
  _ ≤ coveringNumber (ε / 2) B :=
    externalCoveringNumber_le_coveringNumber (ε / 2) B

end Comparisons

/-- The covering number of the image of a set under an injective isometry is equal to
the covering number of the set.
See `Isometry.coveringNumber_image` for the version in an `EMetricSpace`, in which injectivity is
a consequence of being an isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75163648232b773ef5f67fb1669306b0ae191812` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
