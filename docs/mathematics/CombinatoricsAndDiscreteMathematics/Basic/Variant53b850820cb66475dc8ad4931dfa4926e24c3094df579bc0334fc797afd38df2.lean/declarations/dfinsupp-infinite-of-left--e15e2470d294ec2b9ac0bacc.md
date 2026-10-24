# DFinsupp.infinite_of_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9eb68c2107a5fff6d4aeb598e3357e6affff4e52a4bacd68a02ad3420097d4d",
  "kind": "instance",
  "lexical_name": "DFinsupp.infinite_of_left",
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
  "slug": "dfinsupp-infinite-of-left--e15e2470d294ec2b9ac0bacc",
  "source": {
    "blob": "31d8f5aca42493eb98f77c724c647a1409d650f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2394,
    "line": 2387,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e15e2470d294ec2b9ac0bacced7c0cb730d975a011f68330af38d024efa3f2e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9eb68c2107a5fff6d4aeb598e3357e6affff4e52a4bacd68a02ad3420097d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2387–2394.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance DFinsupp.infinite_of_left {ι : Sort _} {π : ι → Sort _} [∀ i, Nontrivial (π i)]
    [∀ i, Zero (π i)] [Infinite ι] : Infinite (Π₀ i, π i) := by
  letI := Classical.decEq ι; choose m hm using fun i => exists_ne (0 : π i);
    exact Infinite.of_injective _ (DFinsupp.single_left_injective hm)
#align dfinsupp.infinite_of_left DFinsupp.infinite_of_left

/-- See `DFinsupp.infinite_of_right` for this in instance form, with the drawback that
it needs all `π i` to be infinite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant53b850820cb66475dc8ad4931dfa4926e24c3094df579bc0334fc797afd38df2.lean#L2387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d8f5aca42493eb98f77c724c647a1409d650f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
