# isoLimittoFiniteQuotientFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71a2d5ad3871494e27ea4bf34df9127969f0b307eba3aa2417ab7c4110f1b537",
  "kind": "def",
  "lexical_name": "isoLimittoFiniteQuotientFunctor",
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
  "slug": "isolimittofinitequotientfunctor--4d67a6882b2baf209798a038",
  "source": {
    "blob": "b74f98fc3935cb50d5a4fe1399e30e5f1d03fcd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d67a6882b2baf209798a0380610e6eb841c14e0b3bc6533440cfa2b488b2237",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71a2d5ad3871494e27ea4bf34df9127969f0b307eba3aa2417ab7c4110f1b537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isoLimittoFiniteQuotientFunctor (P : ProfiniteGrp.{u}) :
    P ≅ (limit <| diagram P) :=
  ContinuousMulEquiv.toProfiniteGrpIso (continuousMulEquivLimittoFiniteQuotientFunctor P)

set_option backward.isDefEq.respectTransparency.types false in
/-- The projection from `P` to the quotient by an open normal subgroup. -/
@[to_additive /-- The projection from `P` to the quotient by an open normal subgroup. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limits/Variant426b357160389600c32e05e697b9fab0d1ded1edc4cc2b6b511094c5fd09724a.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b74f98fc3935cb50d5a4fe1399e30e5f1d03fcd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
