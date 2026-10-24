# semiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2c6d3706b919548fdc63f2c685a5739bc9946f8f9e7e76bc97793c7739b9140",
  "kind": "instance",
  "lexical_name": "semiring",
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
  "slug": "semiring--7aee37c59cd1c9bc1085053f",
  "source": {
    "blob": "06337bba5087b716585d0d60823a10c70aa655b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 408,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7aee37c59cd1c9bc1085053f5351e3a251280ed8d65872809730269b33e95461",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2c6d3706b919548fdc63f2c685a5739bc9946f8f9e7e76bc97793c7739b9140`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semiring [Semiring α] : Semiring (WithZero α) :=
  { WithZero.addMonoidWithOne, WithZero.addCommMonoid, WithZero.mulZeroClass,
    WithZero.monoidWithZero with
    left_distrib := fun a b c => by
      cases' a with a; · rfl
      cases' b with b <;> cases' c with c <;> try rfl
      exact congr_arg some (left_distrib _ _ _),
    right_distrib := fun a b c => by
      cases' c with c
      · change (a + b) * 0 = a * 0 + b * 0
        simp
      cases' a with a <;> cases' b with b <;> try rfl
      exact congr_arg some (right_distrib _ _ _) }

end WithZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variante362d1691de9eb446a9baa40fc5e023489a54ad2d21bb624085b21cb044f8d06.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06337bba5087b716585d0d60823a10c70aa655b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
