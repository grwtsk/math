# autEquivZmod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b84efa83a69be99aecfaeb5099d1b216b6ee495d6f59ca7fcc77ab756f83523e",
  "kind": "def",
  "lexical_name": "autEquivZmod",
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
  "slug": "autequivzmod--57ef629c8a0d2f665e955a19",
  "source": {
    "blob": "eb507eb6fc3b59ca7942bd0f2038038f2acf0721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 409,
    "path": "GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57ef629c8a0d2f665e955a199c9cb0cdc79380635d815cd5f8d5a3be2fe60805",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b84efa83a69be99aecfaeb5099d1b216b6ee495d6f59ca7fcc77ab756f83523e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 409–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def autEquivZmod [NeZero n] {ζ : K} (hζ : IsPrimitiveRoot ζ n) :
    (L ≃ₐ[K] L) ≃* Multiplicative (ZMod n) :=
  haveI hn := Nat.pos_iff_ne_zero.mpr (ne_zero_of_irreducible_X_pow_sub_C H)
  (autEquivRootsOfUnity ⟨ζ, (mem_primitiveRoots hn).mpr hζ⟩ H L).trans
    ((MulEquiv.subgroupCongr (IsPrimitiveRoot.zpowers_eq
      (hζ.isUnit_unit' hn)).symm).trans (AddEquiv.toMultiplicative'
        (hζ.isUnit_unit' hn).zmodEquivZPowers.symm))

include hα in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean#L409).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb507eb6fc3b59ca7942bd0f2038038f2acf0721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
