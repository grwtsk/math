# noZeroDivisors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:358bf3f057132a5ed1984ab2e870850670f33b37d224c1650c711489763de6ba",
  "kind": "instance",
  "lexical_name": "noZeroDivisors",
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
  "slug": "nozerodivisors--d54aed871881f5a82b96b195",
  "source": {
    "blob": "e3e11b461a35c09a42fdae4c50a7fc92ed598bd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 314,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d54aed871881f5a82b96b19542a5f332155a824ae108669e403a14e0ab6ebaae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:358bf3f057132a5ed1984ab2e870850670f33b37d224c1650c711489763de6ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance noZeroDivisors : NoZeroDivisors Cardinal.{u} where
  eq_zero_or_eq_zero_of_mul_eq_zero := fun {a b} =>
    inductionOn₂ a b fun α β => by
      simpa only [mul_def, mk_eq_zero_iff, isEmpty_prod] using id

-- Computable instance to prevent a non-computable one being found via the one above
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Order/Variantb9ffacf813c03f07dc75a6d04e7cb81380043da1954b092918b8698e9f0c5dbf.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e11b461a35c09a42fdae4c50a7fc92ed598bd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
