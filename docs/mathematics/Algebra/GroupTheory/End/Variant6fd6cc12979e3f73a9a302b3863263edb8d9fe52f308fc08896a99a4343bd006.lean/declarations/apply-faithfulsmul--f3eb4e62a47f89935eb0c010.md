# apply_faithfulSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ddeb83ad560e1677e4b25d1cb5b9bebea8d33e9229ba7e921c80459b611747cf",
  "kind": "instance",
  "lexical_name": "apply_faithfulSMul",
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
  "slug": "apply-faithfulsmul--f3eb4e62a47f89935eb0c010",
  "source": {
    "blob": "c481ae021e1fe86c8625c022685092912e8d8493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f3eb4e62a47f89935eb0c010a5a7aa0a2837df0cb0c3be8ec5d84090ed740a5f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ddeb83ad560e1677e4b25d1cb5b9bebea8d33e9229ba7e921c80459b611747cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance apply_faithfulSMul : FaithfulSMul (AddAut M) M where eq_of_smul_eq_smul := AddEquiv.ext

end AddAut

/-! ### Converting actions to and from homs to the monoid/group of endomorphisms/automorphisms -/

section Monoid
variable [Monoid M]

/-- The monoid hom representing a monoid action.

When `M` is a group, see `MulAction.toPermHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c481ae021e1fe86c8625c022685092912e8d8493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
