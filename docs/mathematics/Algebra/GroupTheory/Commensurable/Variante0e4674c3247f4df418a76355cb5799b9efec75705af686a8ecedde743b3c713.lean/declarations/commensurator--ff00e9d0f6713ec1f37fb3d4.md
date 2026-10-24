# commensurator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e319d906cba382b5e96109113e6e929424dccb26e80808a1e8e6fbb6547356e2",
  "kind": "def",
  "lexical_name": "commensurator",
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
  "slug": "commensurator--ff00e9d0f6713ec1f37fb3d4",
  "source": {
    "blob": "79c36925279d911e4c9400b33143ac51c94496ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 149,
    "path": "GRWTSK/Algebra/GroupTheory/Commensurable/Variante0e4674c3247f4df418a76355cb5799b9efec75705af686a8ecedde743b3c713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff00e9d0f6713ec1f37fb3d428aabb2a850f04d7125fee9ad931998381702aa6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Commensurable/Variante0e4674c3247f4df418a76355cb5799b9efec75705af686a8ecedde743b3c713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e319d906cba382b5e96109113e6e929424dccb26e80808a1e8e6fbb6547356e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commensurator (H : Subgroup G) : Subgroup G where
  carrier := {g : G | Commensurable (MulAut.conj g • H) H}
  one_mem' := by simpa using .refl H
  mul_mem' {g h} hg hh := by simpa [mul_smul] using (hh.smul (MulAut.conj g)).trans hg
  inv_mem' h := by simpa [inv_smul_iff] using h.symm

/-- For `H` a subgroup of `G`, this is the subgroup of all elements `g : conjAut G`
such that `Commensurable (g • H) H` -/
@[deprecated "Use `Subgroup.Commensurable.commensurator` instead." (since := "2026-06-25")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Commensurable/Variante0e4674c3247f4df418a76355cb5799b9efec75705af686a8ecedde743b3c713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Commensurable/Variante0e4674c3247f4df418a76355cb5799b9efec75705af686a8ecedde743b3c713.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79c36925279d911e4c9400b33143ac51c94496ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
