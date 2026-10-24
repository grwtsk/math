# isReduced_stalk_of_isReduced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f247d11e40acbfa69ae23d8afdff7cbfafcd50d5b38b91b916648e3d9c2f6e0",
  "kind": "instance",
  "lexical_name": "isReduced_stalk_of_isReduced",
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
  "slug": "isreduced-stalk-of-isreduced--28c15f4e3b0b105bd0450dcf",
  "source": {
    "blob": "4b1ab3ffe23c28171bf5a65d01ae709666230fb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28c15f4e3b0b105bd0450dcf185f02545fb89ed180dd18245c30f15aa872f896",
  "verification": {
    "reference": "docs/verification/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f247d11e40acbfa69ae23d8afdff7cbfafcd50d5b38b91b916648e3d9c2f6e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isReduced_stalk_of_isReduced [IsReduced X] (x : X) :
    _root_.IsReduced (X.presheaf.stalk x) := by
  constructor
  rintro g ⟨n, e⟩
  obtain ⟨U, hxU, s, (rfl : (X.presheaf.germ U x hxU) s = g)⟩ := X.presheaf.exists_germ_eq g
  rw [← map_pow, ← map_zero (X.presheaf.germ _ x hxU).hom] at e
  obtain ⟨V, hxV, iU, iV, (e' : (X.presheaf.map iU.op) (s ^ n) = (X.presheaf.map iV.op) 0)⟩ :=
    X.presheaf.germ_eq x hxU hxU _ 0 e
  rw [map_pow, map_zero] at e'
  replace e' := (IsNilpotent.mk _ _ e').eq_zero (R := Γ(X, V))
  rw [← X.presheaf.germ_res iU x hxV, CommRingCat.comp_apply, e', map_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Properties/Variante5968233a617515b1babf11fcec2f82def6a8410fe4c4d0b1858f7399f18845f.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1ab3ffe23c28171bf5a65d01ae709666230fb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
