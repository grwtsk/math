# IsDedekindFiniteMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76aec0da784a89003fbd80e5df9a2fd0fab64aeb15a7703369d006ba71758a29",
  "kind": "class",
  "lexical_name": "IsDedekindFiniteMonoid",
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
  "slug": "isdedekindfinitemonoid--dee3704f92f5de487725294c",
  "source": {
    "blob": "302c444f017235acc1271402facc00d8492ad1b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant192a415f3decda0c5c21f8c6c04bdc26fd7072cb47ded0b0d0aa2ba09e204c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dee3704f92f5de487725294cb3a09cea9018a1e8b680d2f2ab741858084411fa",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Monoid/Variant192a415f3decda0c5c21f8c6c04bdc26fd7072cb47ded0b0d0aa2ba09e204c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76aec0da784a89003fbd80e5df9a2fd0fab64aeb15a7703369d006ba71758a29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive (attr := mk_iff)] class IsDedekindFiniteMonoid (M : Type*) [MulOne M] : Prop where
  mul_eq_one_symm {a b : M} : a * b = 1 → b * a = 1

export IsDedekindFiniteMonoid (mul_eq_one_symm)
export IsDedekindFiniteAddMonoid (add_eq_zero_symm)
attribute [to_additive existing] isDedekindFiniteMonoid_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Monoid/Variant192a415f3decda0c5c21f8c6c04bdc26fd7072cb47ded0b0d0aa2ba09e204c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Monoid/Variant192a415f3decda0c5c21f8c6c04bdc26fd7072cb47ded0b0d0aa2ba09e204c35.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `302c444f017235acc1271402facc00d8492ad1b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
