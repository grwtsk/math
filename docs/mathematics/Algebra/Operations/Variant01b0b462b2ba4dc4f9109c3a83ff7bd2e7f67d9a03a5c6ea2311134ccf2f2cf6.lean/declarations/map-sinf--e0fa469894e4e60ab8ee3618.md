# map_sInf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c21aab1-ea15-36f4-2838-e2a8dbe9143d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d566de0b-e4ee-2152-31db-b61d6154ae00",
  "kind": "theorem",
  "lexical_name": "map_sInf",
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
  "slug": "map-sinf--e0fa469894e4e60ab8ee3618",
  "source": {
    "blob": "9c1abf4cea977f829dcc3f8678b8d3697e3d749b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2128,
    "line": 2108,
    "path": "GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0fa469894e4e60ab8ee3618c1a71f1ea030594062019de92d523a7eebace83d",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d566de0b-e4ee-2152-31db-b61d6154ae00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2108–2128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_sInf {A : Set (Ideal R)} {f : F} (hf : Function.Surjective f) :
    (∀ J ∈ A, RingHom.ker f ≤ J) → map f (sInf A) = sInf (map f '' A) := by
  refine' fun h => le_antisymm (le_sInf _) _
  · intro j hj y hy
    cases' (mem_map_iff_of_surjective f hf).1 hy with x hx
    cases' (Set.mem_image _ _ _).mp hj with J hJ
    rw [← hJ.right, ← hx.right]
    exact mem_map_of_mem f (sInf_le_of_le hJ.left (le_of_eq rfl) hx.left)
  · intro y hy
    cases' hf y with x hx
    refine' hx ▸ mem_map_of_mem f _
    have : ∀ I ∈ A, y ∈ map f I := by simpa using hy
    rw [Submodule.mem_sInf]
    intro J hJ
    rcases (mem_map_iff_of_surjective f hf).1 (this J hJ) with ⟨x', hx', rfl⟩
    have : x - x' ∈ J := by
      apply h J hJ
      rw [RingHom.mem_ker, map_sub, hx, sub_self]
    simpa only [sub_add_cancel] using J.add_mem this hx'
#align ideal.map_Inf Ideal.map_sInf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant01b0b462b2ba4dc4f9109c3a83ff7bd2e7f67d9a03a5c6ea2311134ccf2f2cf6.lean#L2108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1abf4cea977f829dcc3f8678b8d3697e3d749b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
