# inl_conjAct_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1ada3ebc4c8ea30a4c5c9158e22fc136615cc6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d55f8562-27a5-0006-9d21-0c94d3c6805d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:020e72bf-1948-0473-c37a-5ced78bc0940",
  "kind": "theorem",
  "lexical_name": "inl_conjAct_comm",
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
  "slug": "inl-conjact-comm--1eac770c212cf5d46e78fb10",
  "source": {
    "blob": "f1ada3ebc4c8ea30a4c5c9158e22fc136615cc6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 148,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1eac770c212cf5d46e78fb10d657604bd8e6ede3316bb53dc5a00372df7b1bee",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:020e72bf-1948-0473-c37a-5ced78bc0940`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inl_conjAct_comm {e : E} {n : N} : S.inl (S.conjAct e n) = e * S.inl n * e⁻¹ := by
  simp only [conjAct, MonoidHom.coe_mk, OneHom.coe_mk, MulEquiv.trans_apply,
    MonoidHom.apply_ofInjective_symm, MulAut.conjNormal_apply, MonoidHom.ofInjective_apply]

/-- `GroupExtension`s are equivalent iff there is an isomorphism making a commuting diagram.
  Use `GroupExtension.Equiv.ofMonoidHom` in `Mathlib/GroupTheory/GroupExtension/Basic.lean` to
  construct an equivalence without providing the inverse map. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ada3ebc4c8ea30a4c5c9158e22fc136615cc6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
