# Regular.isPretransitive_mulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b35b04f5f771da0d945adbfdd1f3fc687ea6b7cd456cb940c1735007ca7cbc2e",
  "kind": "instance",
  "lexical_name": "Regular.isPretransitive_mulOpposite",
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
  "slug": "regular-ispretransitive-mulopposite--63e324f4c4d4367ec039d2f1",
  "source": {
    "blob": "7017ee9ce34edfc1e6bd8b8314e3896a7ae2d34a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63e324f4c4d4367ec039d2f150de52284c61b4243a592305a1d1689d704f50df",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b35b04f5f771da0d945adbfdd1f3fc687ea6b7cd456cb940c1735007ca7cbc2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Regular.isPretransitive_mulOpposite [Group G] : IsPretransitive Gᵐᵒᵖ G :=
  ⟨fun x y ↦ ⟨.op (x⁻¹ * y), mul_inv_cancel_left _ _⟩⟩

end MulAction

namespace MulAction

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pretransitive/Variant4220fd9ad6621410c937b3edbd5a39c4d06588de59fba77a4c187b682e739fb3.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7017ee9ce34edfc1e6bd8b8314e3896a7ae2d34a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
