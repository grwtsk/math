# desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60e4e63237ae78cd7205079f59f83114b57c1cb173b6a153f2eff2154025643c",
  "kind": "def",
  "lexical_name": "desc",
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
  "slug": "desc--e6e55fbd25aa1d75d7cbf657",
  "source": {
    "blob": "dcdbb93c93a56b7f83bfeb46026e168c35839d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 283,
    "path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6e55fbd25aa1d75d7cbf65780e87734cc83b8c90ee9a904c6bfb2cbfa36914d",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60e4e63237ae78cd7205079f59f83114b57c1cb173b6a153f2eff2154025643c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def desc :
    homotopyCofiber φ ⟶ K where
  f j :=
    if hj : c.Rel j (c.next j)
    then fstX φ j _ hj ≫ hα.hom _ j + sndX φ j ≫ α.f j
    else sndX φ j ≫ α.f j
  comm' j k hjk := by
    obtain rfl := c.next_eq' hjk
    dsimp
    simp [dif_pos hjk]
    have H := hα.comm (c.next j)
    simp only [comp_f, zero_f, add_zero, prevD_eq _ hjk] at H
    split_ifs with hj
    · simp only [comp_add, d_sndX_assoc _ _ _ hjk, add_comp, assoc, H,
        d_fstX_assoc _ _ _ _ hjk, neg_comp, dNext, AddMonoidHom.mk'_apply]
      abel
    · simp only [d_sndX_assoc _ _ _ hjk, add_comp, assoc, add_left_inj, H,
        dNext_eq_zero _ _ hj, zero_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variantf10a4e563581e2304b555ada896c6321d125ebdb612fca480b1fc015e2833b07.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdbb93c93a56b7f83bfeb46026e168c35839d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
