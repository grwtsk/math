# actualRootPermutationHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe20ed0005f879bed78f67b6858ad51d1e09cd17454a01157fd6466571a8393f",
  "kind": "def",
  "lexical_name": "actualRootPermutationHom",
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
  "slug": "actualrootpermutationhom--bb045f77fdc670479a0fc459",
  "source": {
    "blob": "ecd3ff7d95dd0aa2176eb3717d52a1970ada73ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 43,
    "path": "GRWTSK/Algebra/QuarticGaloisMatching.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb045f77fdc670479a0fc459d0bd4f17493384b4dd2a85626996c2cca37de741",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticGaloisMatching.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe20ed0005f879bed78f67b6858ad51d1e09cd17454a01157fd6466571a8393f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualRootPermutationHom (p : K[X])
    (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r) :
    (L ≃ₐ[K] L) →* Equiv.Perm (Fin 4) where
  toFun := actualRootPerm p e hne he
  map_one' := by
    ext i
    apply he
    simpa using actualRootPerm_spec p e hne he 1 i
  map_mul' φ ψ := by
    ext i
    apply he
    calc
      e.r (actualRootPerm p e hne he (φ * ψ) i) =
          (φ * ψ) (e.r i) := actualRootPerm_spec p e hne he (φ * ψ) i
      _ = φ (ψ (e.r i)) := rfl
      _ = e.r (actualRootPerm p e hne he φ
          (actualRootPerm p e hne he ψ i)) := by
            rw [actualRootPerm_spec, actualRootPerm_spec]

/-- The actual automorphism action on the three perfect matchings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticGaloisMatching.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticGaloisMatching.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd3ff7d95dd0aa2176eb3717d52a1970ada73ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
