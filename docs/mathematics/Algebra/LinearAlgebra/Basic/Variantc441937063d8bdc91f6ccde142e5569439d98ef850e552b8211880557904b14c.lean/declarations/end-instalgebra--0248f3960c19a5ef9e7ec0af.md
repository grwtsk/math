# End.instAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:19cd5289519a76e1f9029421e4ad457f10e7a0ad8f005761ba4e38d0a77613e5",
  "kind": "instance",
  "lexical_name": "End.instAlgebra",
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
  "slug": "end-instalgebra--0248f3960c19a5ef9e7ec0af",
  "source": {
    "blob": "16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0248f3960c19a5ef9e7ec0af4df358052ac0b2f9bc3c917cfc7303aad67505c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:19cd5289519a76e1f9029421e4ad457f10e7a0ad8f005761ba4e38d0a77613e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance End.instAlgebra : Algebra R (Module.End S M) :=
  Algebra.ofModule smul_mul_assoc fun r f g => (smul_comm r f g).symm

-- to prove this is a special case of the above
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
