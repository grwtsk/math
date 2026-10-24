# map_rootsOfUnity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6725162-13e2-db1f-a894-10ec5896939e",
  "kind": "lemma",
  "lexical_name": "map_rootsOfUnity",
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
  "slug": "map-rootsofunity--37fbdd804d2a68cedda87726",
  "source": {
    "blob": "9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 500,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37fbdd804d2a68cedda877264604aef106713d1d8f95433ad2b9018b4d8d4005",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6725162-13e2-db1f-a894-10ec5896939e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_rootsOfUnity {S F} [CommRing S] [IsDomain S] [FunLike F R S] [MonoidHomClass F R S]
    {ζ : R} {n : ℕ} [NeZero n] (hζ : IsPrimitiveRoot ζ n) {f : F} (hf : Function.Injective f) :
    (rootsOfUnity n R).map (Units.map f) = rootsOfUnity n S := by
  letI : CommMonoid Sˣ := inferInstance
  replace hζ := hζ.isUnit_unit <| NeZero.pos n
  rw [← hζ.zpowers_eq,
    ← (hζ.map_of_injective (Units.map_injective (f := (f : R →* S)) hf)).zpowers_eq,
    MonoidHom.map_zpowers]

/-- If `R` contains an `n`-th primitive root, and `S/R` is a ring extension,
then the `n`-th roots of unity in `R` and `S` are isomorphic.
Also see `IsPrimitiveRoot.map_rootsOfUnity` for the equality as `Subgroup Sˣ`. -/
@[simps! -isSimp apply_coe_val apply_coe_inv_val]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
