# autAdjoinRootXPowSubCHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55e4bc21921e9bf7e97d3218c94251724d54d8edc5da7e1c742e20e339f65826",
  "kind": "def",
  "lexical_name": "autAdjoinRootXPowSubCHom",
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
  "slug": "autadjoinrootxpowsubchom--d891d64601301cbfa296dbea",
  "source": {
    "blob": "aca0c1f3380eccc1886d0a8571a1cbfb029c9487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 217,
    "path": "GRWTSK/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d891d64601301cbfa296dbea98bf928d2ca1c15fe2961b9e8488e1a2c7ada01e",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55e4bc21921e9bf7e97d3218c94251724d54d8edc5da7e1c742e20e339f65826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def autAdjoinRootXPowSubCHom :
    rootsOfUnity n K →* (K[n√a] →ₐ[K] K[n√a]) where
  toFun η := liftAlgHom (X ^ n - C a) (Algebra.ofId _ _) (((η : Kˣ) : K) • (root _) : K[n√a]) <| by
    have := (mem_rootsOfUnity' _ _).mp η.prop
    change aeval _ _ = _
    rw [map_sub, map_pow, aeval_C, aeval_X, Algebra.smul_def, mul_pow, root_X_pow_sub_C_pow,
      AdjoinRoot.algebraMap_eq, ← map_pow, this, map_one, one_mul, sub_self]
  map_one' := algHom_ext <| by simp
  map_mul' := fun ε η ↦ algHom_ext <| by simp [mul_smul, smul_comm ((ε : Kˣ) : K)]

/-- The natural embedding of the roots of unity of `K` into `Gal(K[ⁿ√a]/K)`, by sending
`η ↦ (ⁿ√a ↦ η • ⁿ√a)`. This is an isomorphism when `K` contains a primitive root of unity.
See `autAdjoinRootXPowSubCEquiv`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variantcc3294c1a3fcedd8b52f096a4eaea408c2e701d8d96e83839f9693d98b434410.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aca0c1f3380eccc1886d0a8571a1cbfb029c9487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
