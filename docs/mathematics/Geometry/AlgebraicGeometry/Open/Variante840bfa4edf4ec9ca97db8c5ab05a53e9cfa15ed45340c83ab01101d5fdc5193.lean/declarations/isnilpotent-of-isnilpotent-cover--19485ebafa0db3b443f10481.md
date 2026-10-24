# isNilpotent_of_isNilpotent_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98189417-0c03-2bf5-5fdd-2bee56f783a8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a6f46b3-6f0d-b957-9cd7-074da04717da",
  "kind": "lemma",
  "lexical_name": "isNilpotent_of_isNilpotent_cover",
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
  "slug": "isnilpotent-of-isnilpotent-cover--19485ebafa0db3b443f10481",
  "source": {
    "blob": "cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 237,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19485ebafa0db3b443f10481bd83654794c6c2aa6ee185ae5a785f538508342c",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a6f46b3-6f0d-b957-9cd7-074da04717da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNilpotent_of_isNilpotent_cover {X : Scheme.{u}} {U : X.Opens} (s : Γ(X, U))
    (𝒰 : X.OpenCover) [Finite 𝒰.J] (h : ∀ i : 𝒰.J, IsNilpotent ((𝒰.map i).app U s)) :
    IsNilpotent s := by
  choose fn hfn using h
  have : Fintype 𝒰.J := Fintype.ofFinite 𝒰.J
  /- the maximum of all `fn i` (exists, because `𝒰.J` is finite) -/
  let N : ℕ := Finset.sup Finset.univ fn
  have hfnleN (i : 𝒰.J) : fn i ≤ N := Finset.le_sup (Finset.mem_univ i)
  use N
  apply zero_of_zero_cover (𝒰 := 𝒰)
  on_goal 1 => intro i; simp only [map_pow]
  -- This closes both remaining goals at once.
  exact pow_eq_zero_of_le (hfnleN i) (hfn i)

section deprecated

/-- The basic open sets form an affine open cover of `Spec R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variante840bfa4edf4ec9ca97db8c5ab05a53e9cfa15ed45340c83ab01101d5fdc5193.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd9c77ce1245e4f72cb3164cde52ca6b001ed9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
