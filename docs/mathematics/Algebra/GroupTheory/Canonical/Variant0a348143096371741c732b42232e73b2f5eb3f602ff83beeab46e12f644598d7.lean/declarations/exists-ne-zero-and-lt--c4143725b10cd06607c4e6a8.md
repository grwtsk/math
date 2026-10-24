# exists_ne_zero_and_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8e45bcf-d40c-fcdf-5822-5579101bed28",
  "kind": "theorem",
  "lexical_name": "exists_ne_zero_and_lt",
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
  "slug": "exists-ne-zero-and-lt--c4143725b10cd06607c4e6a8",
  "source": {
    "blob": "212a96fc993b5c05a754ffc6305a15d78f693621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 343,
    "path": "GRWTSK/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4143725b10cd06607c4e6a82352cf2ad2e09e2fd623f85be78231008cb3c2ed",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e45bcf-d40c-fcdf-5822-5579101bed28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 343–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ne_zero_and_lt [NoMinOrder α] (hx : x ≠ 0) :
    ∃ y, y ≠ 0 ∧ y < x := by
  obtain ⟨z, hlt⟩ := exists_lt (WithZero.unzero hx)
  rw [← WithZero.coe_lt_coe, WithZero.coe_unzero hx] at hlt
  exact ⟨z, WithZero.coe_ne_zero, hlt⟩

section Multiplicative

open Multiplicative

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Canonical/Variant0a348143096371741c732b42232e73b2f5eb3f602ff83beeab46e12f644598d7.lean#L343).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `212a96fc993b5c05a754ffc6305a15d78f693621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
