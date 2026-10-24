# initialStorage_abs_sub_four_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b94cc11-8930-07f8-9bc1-929fa958bc98",
  "kind": "theorem",
  "lexical_name": "initialStorage_abs_sub_four_linear",
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
  "slug": "initialstorage-abs-sub-four-linear--2df26abe0fc047844f2d17d5",
  "source": {
    "blob": "7a4b3bb35534c9452b589858596c9139e4a3b919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2df26abe0fc047844f2d17d56721f05449f1762c1374818dff6d3e1050ff12cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b94cc11-8930-07f8-9bc1-929fa958bc98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem initialStorage_abs_sub_four_linear {L b h : ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1)
    (hL : |L| ≤ 5 * h) (hb : |b| ≤ 2 * h) :
    |initialStorage L b - 4| ≤ 314 * h := by
  have hbound := initialStorage_abs_sub_four hh hL hb
  have hs : h ^ 2 ≤ h := by nlinarith
  nlinarith

/-- Native finite-radius consequence after independently supplying K/A bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a4b3bb35534c9452b589858596c9139e4a3b919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
