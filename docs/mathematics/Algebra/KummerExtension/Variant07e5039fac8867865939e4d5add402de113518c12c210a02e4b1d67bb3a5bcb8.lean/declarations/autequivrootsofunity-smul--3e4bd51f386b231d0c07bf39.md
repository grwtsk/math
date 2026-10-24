# autEquivRootsOfUnity_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c77dd11a-2dc4-5315-187b-fe43896a37cb",
  "kind": "lemma",
  "lexical_name": "autEquivRootsOfUnity_smul",
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
  "slug": "autequivrootsofunity-smul--3e4bd51f386b231d0c07bf39",
  "source": {
    "blob": "07592dedf37f522f08eb23616e34353dfaa93528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 401,
    "path": "GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e4bd51f386b231d0c07bf3987b9ad009be0411a1c620f4a644edff80f36438e",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77dd11a-2dc4-5315-187b-fe43896a37cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma autEquivRootsOfUnity_smul [NeZero n] (σ : L ≃ₐ[K] L) :
    autEquivRootsOfUnity hζ H L σ • α = σ α := by
  have ⟨ζ, hζ'⟩ := hζ
  have hn := NeZero.pos n
  rw [mem_primitiveRoots hn] at hζ'
  rw [← mem_nthRoots hn, (hζ'.map_of_injective (algebraMap K L).injective).nthRoots_eq
    (rootOfSplitsXPowSubC_pow a L)] at hα
  simp only [Finset.range_val, Multiset.mem_map, Multiset.mem_range] at hα
  obtain ⟨i, _, rfl⟩ := hα
  simp only [map_mul, ← map_pow, ← Algebra.smul_def, map_smul,
    autEquivRootsOfUnity_apply_rootOfSplit hζ H L]
  exact smul_comm _ _ _

/-- Suppose `L/K` is the splitting field of `Xⁿ - a`, and `ζ` is a `n`-th primitive root of unity
in `K`, then `Gal(L/K)` is isomorphic to `ZMod n`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant07e5039fac8867865939e4d5add402de113518c12c210a02e4b1d67bb3a5bcb8.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07592dedf37f522f08eb23616e34353dfaa93528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
