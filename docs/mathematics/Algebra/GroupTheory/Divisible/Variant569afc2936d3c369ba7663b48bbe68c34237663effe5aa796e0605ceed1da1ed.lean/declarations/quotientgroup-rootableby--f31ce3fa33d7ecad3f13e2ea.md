# QuotientGroup.rootableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc616b52824e16796f83860a5e92cee99c957eb3a6ee0b4a640ed10d91c683e7",
  "kind": "instance",
  "lexical_name": "QuotientGroup.rootableBy",
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
  "slug": "quotientgroup-rootableby--f31ce3fa33d7ecad3f13e2ea",
  "source": {
    "blob": "ecb0bcfd386290793d7f960bef5800a8970244ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 279,
    "path": "GRWTSK/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f31ce3fa33d7ecad3f13e2eae3a0f19d0ca6fc6a67a92f4e0509bd1ec63ea210",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc616b52824e16796f83860a5e92cee99c957eb3a6ee0b4a640ed10d91c683e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance QuotientGroup.rootableBy [RootableBy A ℕ] : RootableBy (A ⧸ B) ℕ :=
  QuotientGroup.mk_surjective.rootableBy _ fun _ _ => rfl
#align quotient_group.rootable_by QuotientGroup.rootableBy
#align quotient_add_group.divisible_by QuotientAddGroup.divisibleBy

end Quotient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Divisible/Variant569afc2936d3c369ba7663b48bbe68c34237663effe5aa796e0605ceed1da1ed.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb0bcfd386290793d7f960bef5800a8970244ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
