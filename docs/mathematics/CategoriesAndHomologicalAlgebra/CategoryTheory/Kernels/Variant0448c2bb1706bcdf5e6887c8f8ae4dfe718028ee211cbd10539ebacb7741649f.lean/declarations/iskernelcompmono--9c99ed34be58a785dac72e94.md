# isKernelCompMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca033e5a4681a991496b44dff27133599b37b0748b65f7be9a414fd935edbc21",
  "kind": "def",
  "lexical_name": "isKernelCompMono",
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
  "slug": "iskernelcompmono--9c99ed34be58a785dac72e94",
  "source": {
    "blob": "094edfbc4fcf82652f00b5ce2ed644d55f22968b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c99ed34be58a785dac72e94d0fbd6444443e19df15e795c576ad150ad3b9536",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca033e5a4681a991496b44dff27133599b37b0748b65f7be9a414fd935edbc21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isKernelCompMono {c : KernelFork f} (i : IsLimit c) {Z} (g : Y ⟶ Z) [hg : Mono g] {h : X ⟶ Z}
    (hh : h = f ≫ g) : IsLimit (KernelFork.ofι c.ι (by simp [hh]) : KernelFork h) :=
  Fork.IsLimit.mk' _ fun s =>
    let s' : KernelFork f := Fork.ofι s.ι (by rw [← cancel_mono g]; simp [← hh, s.condition])
    let l := KernelFork.IsLimit.lift' i s'.ι s'.condition
    ⟨l.1, l.2, fun hm => by
      apply Fork.IsLimit.hom_ext i; rw [Fork.ι_ofι] at hm; rw [hm]; exact l.2.symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant0448c2bb1706bcdf5e6887c8f8ae4dfe718028ee211cbd10539ebacb7741649f.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094edfbc4fcf82652f00b5ce2ed644d55f22968b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
