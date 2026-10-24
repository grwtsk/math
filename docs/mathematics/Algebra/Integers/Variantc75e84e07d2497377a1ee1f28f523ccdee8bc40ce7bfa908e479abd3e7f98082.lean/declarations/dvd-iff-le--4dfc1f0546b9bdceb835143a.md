# dvd_iff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e61cb60f-f452-476e-48fa-1498cff42274",
  "kind": "theorem",
  "lexical_name": "dvd_iff_le",
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
  "slug": "dvd-iff-le--4dfc1f0546b9bdceb835143a",
  "source": {
    "blob": "90c379ea5a1786c4f5786791ad9cf0acc50a3835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 151,
    "path": "GRWTSK/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dfc1f0546b9bdceb835143affbcb7b5f66039451a69c79fb30b198498190605",
  "verification": {
    "reference": "docs/verification/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e61cb60f-f452-476e-48fa-1498cff42274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_iff_le (hv : Integers v O) {x y : O} :
    x ∣ y ↔ v (algebraMap O F y) ≤ v (algebraMap O F x) :=
  ⟨hv.le_of_dvd, hv.dvd_of_le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integers/Variantc75e84e07d2497377a1ee1f28f523ccdee8bc40ce7bfa908e479abd3e7f98082.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90c379ea5a1786c4f5786791ad9cf0acc50a3835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
