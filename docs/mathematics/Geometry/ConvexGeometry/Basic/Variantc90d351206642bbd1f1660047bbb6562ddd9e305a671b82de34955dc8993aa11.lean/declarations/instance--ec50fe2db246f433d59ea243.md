# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94c0c891fd3ab71a4e074fb2300c436e88bc40017cbce5065b6dce4c999a0e31",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ec50fe2db246f433d59ea243",
  "source": {
    "blob": "46fb979080fece70339c3a8b657d57c44af582e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 154,
    "path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variantc90d351206642bbd1f1660047bbb6562ddd9e305a671b82de34955dc8993aa11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec50fe2db246f433d59ea2439764162910abc8611c1ef099abdaecdcfc10d673",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Basic/Variantc90d351206642bbd1f1660047bbb6562ddd9e305a671b82de34955dc8993aa11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94c0c891fd3ab71a4e074fb2300c436e88bc40017cbce5065b6dce4c999a0e31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompleteLattice (ConvexCone 𝕜 E) :=
  { SetLike.instPartialOrder with
    le := (· ≤ ·)
    lt := (· < ·)
    bot := ⊥
    bot_le := fun _ _ => False.elim
    top := ⊤
    le_top := fun _ x _ => mem_top 𝕜 x
    inf := (· ⊓ ·)
    sInf := InfSet.sInf
    sup := fun a b => sInf { x | a ≤ x ∧ b ≤ x }
    sSup := fun s => sInf { T | ∀ S ∈ s, S ≤ T }
    le_sup_left := fun _ _ => fun _ hx => mem_sInf.2 fun _ hs => hs.1 hx
    le_sup_right := fun _ _ => fun _ hx => mem_sInf.2 fun _ hs => hs.2 hx
    sup_le := fun _ _ c ha hb _ hx => mem_sInf.1 hx c ⟨ha, hb⟩
    le_inf := fun _ _ _ ha hb _ hx => ⟨ha hx, hb hx⟩
    inf_le_left := fun _ _ _ => And.left
    inf_le_right := fun _ _ _ => And.right
    le_sSup := fun _ p hs _ hx => mem_sInf.2 fun _ ht => ht p hs hx
    sSup_le := fun _ p hs _ hx => mem_sInf.1 hx p hs
    le_sInf := fun _ _ ha _ hx => mem_sInf.2 fun t ht => ha t ht hx
    sInf_le := fun _ _ ha _ hx => mem_sInf.1 hx _ ha }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Basic/Variantc90d351206642bbd1f1660047bbb6562ddd9e305a671b82de34955dc8993aa11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Basic/Variantc90d351206642bbd1f1660047bbb6562ddd9e305a671b82de34955dc8993aa11.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46fb979080fece70339c3a8b657d57c44af582e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
