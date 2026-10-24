# Submodule.natAbs_det_basis_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6af03515696cd6e377e27a4a5c3c9722c72be8a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a3ad8429-71dc-173d-f787-70ee49232100",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:192b219f-7498-a622-884c-e4f2354c1dc8",
  "kind": "theorem",
  "lexical_name": "Submodule.natAbs_det_basis_change",
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
  "slug": "submodule-natabs-det-basis-change--041296c239ea12ec86f401ed",
  "source": {
    "blob": "6af03515696cd6e377e27a4a5c3c9722c72be8a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:041296c239ea12ec86f401ed0639d09cfb48a0a4a940aea8e9fd474fa8c39125",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:192b219f-7498-a622-884c-e4f2354c1dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.natAbs_det_basis_change {ι : Type*} [Fintype ι] [DecidableEq ι] (b : Basis ι ℤ M)
    (N : Submodule ℤ M) (bN : Basis ι ℤ N) :
    (b.det ((↑) ∘ bN)).natAbs = Nat.card (M ⧸ N) := by
  let e := b.equiv bN (Equiv.refl _)
  calc
    (b.det (N.subtype ∘ bN)).natAbs = (LinearMap.det (N.subtype ∘ₗ (e : M →ₗ[ℤ] N))).natAbs := by
      rw [Basis.det_comp_basis]
    _ = _ := natAbs_det_equiv N e

end Submodule

section AddSubgroup

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CardQuotient/Variant8d86c89737a099105f5755aadbdf7c89690d5dca7b77e406f1eeb985b8cf59a2.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6af03515696cd6e377e27a4a5c3c9722c72be8a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
