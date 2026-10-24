# Ideal.under_map_of_isLocalizationAtPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bab4bcdb-04a2-d66a-a718-c46e8b7f8954",
  "kind": "lemma",
  "lexical_name": "Ideal.under_map_of_isLocalizationAtPrime",
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
  "slug": "ideal-under-map-of-islocalizationatprime--189f29dc2f2e50268c459cba",
  "source": {
    "blob": "3169c6cc8c08926425ef8e8133332988c64d0ad2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 296,
    "path": "GRWTSK/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:189f29dc2f2e50268c459cba35dd839ad61850358ead7a0c0768e74d1bd14928",
  "verification": {
    "reference": "docs/verification/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bab4bcdb-04a2-d66a-a718-c46e8b7f8954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.under_map_of_isLocalizationAtPrime {p : Ideal R} [p.IsPrime] (hpq : p ≤ q) :
    (p.map (algebraMap R S)).under R = p := by
  have disj : Disjoint (q.primeCompl : Set R) p := by
    simp [Ideal.primeCompl, ← le_compl_iff_disjoint_left, hpq]
  exact IsLocalization.comap_map_of_isPrime_disjoint _ _ p (by simpa) disj

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AtPrime/Variant8782959273db74443c50346119d668a3aea3e68b6a58235df418e3d0a610d8fd.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3169c6cc8c08926425ef8e8133332988c64d0ad2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
