# semigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d40ab0070d07445733297cc6682843d0b0d67cfb2ba3a07ff116183c6256acbd",
  "kind": "instance",
  "lexical_name": "semigroup",
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
  "slug": "semigroup--ab722d8eebb5868c0911b34f",
  "source": {
    "blob": "9a479ddfb5ef61861dfc3b8a388f0033678b4c26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 566,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab722d8eebb5868c0911b34f674f1d779412b635fba94c6d5aa3dd47c672696b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d40ab0070d07445733297cc6682843d0b0d67cfb2ba3a07ff116183c6256acbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance semigroup {M : Type*} [Semigroup M] (c : Con M) : Semigroup c.Quotient := fast_instance%
  Function.Surjective.semigroup _ Quotient.mk''_surjective fun _ _ => rfl

/-- The quotient of a commutative semigroup by a congruence relation is a semigroup. -/
@[to_additive "The quotient of an `AddCommSemigroup` by an additive congruence relation is
an `AddCommSemigroup`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a479ddfb5ef61861dfc3b8a388f0033678b4c26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
