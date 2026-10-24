# _root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.normalizerCondition_iff_only_full_group_self_normalizing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7a7fc87-e9f3-e9dc-b18b-85b8f98a98db",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.normalizerCondition_iff_only_full_group_self_normalizing",
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
  "slug": "root-grwtsk-algebra-grouptheory-characteristic-variante8aabba3afe2b34f87--c99c486c64646d2962cdbfe2",
  "source": {
    "blob": "a474c7cf46814df47fea56e9698a77834bf8c717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 562,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c99c486c64646d2962cdbfe27ad67f138025dd3e83ef28cc0c50c77e7d21437a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7a7fc87-e9f3-e9dc-b18b-85b8f98a98db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.Characteristic.Variante8aabba3afe2b34f8712e9d70e3c05270acb31cb8a9045426b91dec58c44a81b.normalizerCondition_iff_only_full_group_self_normalizing :
    NormalizerCondition G ↔ ∀ H : Subgroup G, normalizer H = H → H = ⊤ := by
  apply forall_congr'; intro H
  simp only [lt_iff_le_and_ne, le_normalizer, Ne]
  tauto

end Normalizer

end Subgroup

namespace Group

variable {s : Set G}

/-- Given a set `s`, `conjugatesOfSet s` is the set of all conjugates of
the elements of `s`. -/
@[to_additive /-- Given a set `s`, `addConjugatesOfSet s` is the set of all additive conjugates of
the elements of `s`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantcfc794626e54c41a0f1c76285d26fd121c3c2359754a5b7da959bfac1f40d5ad.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a474c7cf46814df47fea56e9698a77834bf8c717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
