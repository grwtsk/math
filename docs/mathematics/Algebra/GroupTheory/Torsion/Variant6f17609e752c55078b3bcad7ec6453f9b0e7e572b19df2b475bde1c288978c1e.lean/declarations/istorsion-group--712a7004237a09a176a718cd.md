# IsTorsion.group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f7aa9ff12d2f565f194c6a0d44f2b87a7cfa3a4394ab502df25e1866f1bb437",
  "kind": "def",
  "lexical_name": "IsTorsion.group",
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
  "slug": "istorsion-group--712a7004237a09a176a718cd",
  "source": {
    "blob": "ff6ecc826d006a3b01995485c20948ad84f091da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 82,
    "path": "GRWTSK/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:712a7004237a09a176a718cdd1602208566e26039339ef681f60a93ced461857",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f7aa9ff12d2f565f194c6a0d44f2b87a7cfa3a4394ab502df25e1866f1bb437`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsTorsion.group [Monoid G] (tG : IsTorsion G) : Group G :=
  { ‹Monoid G› with
    inv := fun g => g ^ (orderOf g - 1)
    mul_left_inv := fun g => by
      erw [← pow_succ', tsub_add_cancel_of_le, pow_orderOf_eq_one]
      exact orderOf_pos' (tG g) }
#align is_torsion.group IsTorsion.group
#align is_torsion.add_group IsTorsion.addGroup

section Group

variable [Group G] {N : Subgroup G} [Group H]

/-- Subgroups of torsion groups are torsion groups. -/
@[to_additive "Subgroups of additive torsion groups are additive torsion groups."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Torsion/Variant6f17609e752c55078b3bcad7ec6453f9b0e7e572b19df2b475bde1c288978c1e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff6ecc826d006a3b01995485c20948ad84f091da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
