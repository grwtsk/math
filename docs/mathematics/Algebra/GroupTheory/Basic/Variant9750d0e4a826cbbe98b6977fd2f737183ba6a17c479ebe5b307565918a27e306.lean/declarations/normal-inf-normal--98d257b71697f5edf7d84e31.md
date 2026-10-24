# normal_inf_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a65cd217eb85d0f9395056a5e2003c3c5ee1569c4df1183b33871f1020b115b8",
  "kind": "instance",
  "lexical_name": "normal_inf_normal",
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
  "slug": "normal-inf-normal--98d257b71697f5edf7d84e31",
  "source": {
    "blob": "c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3632,
    "line": 3627,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98d257b71697f5edf7d84e31c075eef9d59d200c16b47f9c72def51802cc7250",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a65cd217eb85d0f9395056a5e2003c3c5ee1569c4df1183b33871f1020b115b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3627–3632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance normal_inf_normal (H K : Subgroup G) [hH : H.Normal] [hK : K.Normal] : (H ⊓ K).Normal :=
  ⟨fun n hmem g => ⟨hH.conj_mem n hmem.1 g, hK.conj_mem n hmem.2 g⟩⟩
#align subgroup.normal_inf_normal Subgroup.normal_inf_normal
#align add_subgroup.normal_inf_normal AddSubgroup.normal_inf_normal

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean#L3627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
