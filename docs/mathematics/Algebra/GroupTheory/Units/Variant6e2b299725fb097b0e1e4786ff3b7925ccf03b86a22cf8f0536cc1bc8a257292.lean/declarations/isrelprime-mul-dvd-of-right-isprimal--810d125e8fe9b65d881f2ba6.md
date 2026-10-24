# IsRelPrime.mul_dvd_of_right_isPrimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc572aa1-52d2-2ed6-18a6-8af40a96cc32",
  "kind": "theorem",
  "lexical_name": "IsRelPrime.mul_dvd_of_right_isPrimal",
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
  "slug": "isrelprime-mul-dvd-of-right-isprimal--810d125e8fe9b65d881f2ba6",
  "source": {
    "blob": "1e35e3a8cd0ecef76e3b68db016fa98b474a0f12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 222,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:810d125e8fe9b65d881f2ba63f139d31719b2af3608a3aa32f3793d007baa3f2",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc572aa1-52d2-2ed6-18a6-8af40a96cc32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsRelPrime.mul_dvd_of_right_isPrimal (H : IsRelPrime x y) (H1 : x ∣ z) (H2 : y ∣ z)
    (hy : IsPrimal y) : x * y ∣ z := by
  obtain ⟨w, rfl⟩ := H1
  exact mul_dvd_mul_left x (H.symm.dvd_of_dvd_mul_left_of_isPrimal H2 hy)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variant6e2b299725fb097b0e1e4786ff3b7925ccf03b86a22cf8f0536cc1bc8a257292.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e35e3a8cd0ecef76e3b68db016fa98b474a0f12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
