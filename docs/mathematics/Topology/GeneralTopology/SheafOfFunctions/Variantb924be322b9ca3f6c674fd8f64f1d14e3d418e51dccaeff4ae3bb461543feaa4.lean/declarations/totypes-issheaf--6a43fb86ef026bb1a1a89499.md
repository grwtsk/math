# toTypes_isSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8856db88-1976-41be-cbd5-5b2b10e29d22",
  "kind": "theorem",
  "lexical_name": "toTypes_isSheaf",
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
  "slug": "totypes-issheaf--6a43fb86ef026bb1a1a89499",
  "source": {
    "blob": "eb55321c87c56ad8f57daf4dcf565d0da0073dd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 54,
    "path": "GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a43fb86ef026bb1a1a8949932f855f21c76bd3edb61ddfeb203cc0c54a45337",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8856db88-1976-41be-cbd5-5b2b10e29d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toTypes_isSheaf (T : X → Type*) : (presheafToTypes X T).IsSheaf :=
  isSheaf_of_isSheafUniqueGluing_types _ fun ι U sf hsf => by
  -- We use the sheaf condition in terms of unique gluing
  -- U is a family of open sets, indexed by `ι` and `sf` is a compatible family of sections.
  -- In the informal comments below, I'll just write `U` to represent the union.
    -- Our first goal is to define a function "lifted" to all of `U`.
    -- We do this one point at a time. Using the axiom of choice, we can pick for each
    -- `x : ↑(iSup U)` an index `i : ι` such that `x` lies in `U i`
    choose index index_spec using fun x : ↑(iSup U) => Opens.mem_iSup.mp x.2
    -- Using this data, we can glue our functions together to a single section
    let s : ∀ x : ↑(iSup U), T x := fun x => sf (index x) ⟨x.1, index_spec x⟩
    refine ⟨s, ?_, ?_⟩
    · intro i
      funext x
      -- Now we need to verify that this lifted function restricts correctly to each set `U i`.
      -- Of course, the difficulty is that at any given point `x ∈ U i`,
      -- we may have used the axiom of choice to pick a different `j` with `x ∈ U j`
      -- when defining the function.
      -- Thus we'll need to use the fact that the restrictions are compatible.
      exact congr_fun (hsf (index ⟨x, _⟩) i) ⟨x, ⟨index_spec ⟨x.1, _⟩, x.2⟩⟩
    · -- Now we just need to check that the lift we picked was the only possible one.
      -- So we suppose we had some other gluing `t` of our sections
      intro t ht
      -- and observe that we need to check that it agrees with our choice
      -- for each `x ∈ ↑(iSup U)`.
      funext x
      exact congr_fun (ht (index x)) ⟨x.1, index_spec x⟩

-- We verify that the non-dependent version is an immediate consequence:
/-- The presheaf of not-necessarily-continuous functions to
a target type `T` satisfies the sheaf condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantb924be322b9ca3f6c674fd8f64f1d14e3d418e51dccaeff4ae3bb461543feaa4.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb55321c87c56ad8f57daf4dcf565d0da0073dd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
