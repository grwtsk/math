# IsDomain.hasRankNullity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3bba8f24d6f19c22ce9118d99b05b5aee721130c4525f4178f6814cadae04664",
  "kind": "instance",
  "lexical_name": "IsDomain.hasRankNullity",
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
  "slug": "isdomain-hasranknullity--7ab677a8a598fe414377bcc7",
  "source": {
    "blob": "fa0ea85fb29c44bcfbec96df2549c6fcb712d338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 97,
    "path": "GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ab677a8a598fe414377bcc7ce45bdecc8aa3fece71ddd15fab3af6ff744829c",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3bba8f24d6f19c22ce9118d99b05b5aee721130c4525f4178f6814cadae04664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsDomain.hasRankNullity [IsDomain R] : HasRankNullity.{w} R where
  rank_quotient_add_rank := rank_quotient_add_rank_of_isDomain
  exists_set_linearIndependent M := exists_set_linearIndependent_of_isDomain R M

namespace IsBaseChange

open Cardinal TensorProduct

section

variable {p} [Free S N] [StrongRankCondition S] {T : Type uT} [CommRing T] [Algebra R T]
  (hpT : Algebra.algebraMapSubmonoid T p ≤ T⁰) [StrongRankCondition (S ⊗[R] T)]
  {P : Type uP} [AddCommGroup P] [Module R P] [Module T P] [IsScalarTower R T P]
  {g : M →ₗ[R] P} (bc : IsBaseChange T g)

include S hp hpT f bc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant226a6c2687e562cddd738340edc9959094890e8d2da4ae6a803824587a8cc988.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa0ea85fb29c44bcfbec96df2549c6fcb712d338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
