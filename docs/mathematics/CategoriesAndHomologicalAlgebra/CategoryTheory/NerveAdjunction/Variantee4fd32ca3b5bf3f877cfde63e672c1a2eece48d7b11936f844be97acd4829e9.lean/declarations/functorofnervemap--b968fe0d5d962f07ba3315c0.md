# functorOfNerveMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:829d6df8d7ce52df9518646d6f85239e595f3c49db4fc74da3fe3bae32bed4a0",
  "kind": "def",
  "lexical_name": "functorOfNerveMap",
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
  "slug": "functorofnervemap--b968fe0d5d962f07ba3315c0",
  "source": {
    "blob": "dbb502bca8ac6ac01d14a22f00c00348a9475566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 353,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b968fe0d5d962f07ba3315c0fc572489a732d28716764bbc8f57878c383db21e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:829d6df8d7ce52df9518646d6f85239e595f3c49db4fc74da3fe3bae32bed4a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorOfNerveMap (φ : nerveFunctor₂.obj ↧C ⟶ nerveFunctor₂.obj ↧D) :
    C ⥤ D where
  obj x := nerveEquiv (φ.app (op ⟨⦋0⦌, by simp⟩) (nerveEquiv.symm x))
  map f := nerve.homEquiv ((nerve.edgeMk f).toTruncated.map φ)
  map_id x := by
    rw [edgeMk_id, SSet.Edge.toTruncated_id, SSet.Truncated.Edge.map_id]
    exact nerve.homEquiv_id _
  map_comp f g := by
    obtain ⟨h⟩ := (nerve.nonempty_compStruct_iff f g (f ≫ g)).2 rfl
    exact (nerve.homEquiv_comp (h.toTruncated.map φ)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NerveAdjunction/Variantee4fd32ca3b5bf3f877cfde63e672c1a2eece48d7b11936f844be97acd4829e9.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb502bca8ac6ac01d14a22f00c00348a9475566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
