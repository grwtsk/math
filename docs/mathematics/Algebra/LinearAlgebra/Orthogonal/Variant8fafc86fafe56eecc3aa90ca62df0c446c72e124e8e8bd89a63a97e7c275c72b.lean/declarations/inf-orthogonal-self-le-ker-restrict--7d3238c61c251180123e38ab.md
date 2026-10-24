# inf_orthogonal_self_le_ker_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cff09a9-df31-c412-de42-e85fa50f4ff7",
  "kind": "lemma",
  "lexical_name": "inf_orthogonal_self_le_ker_restrict",
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
  "slug": "inf-orthogonal-self-le-ker-restrict--7d3238c61c251180123e38ab",
  "source": {
    "blob": "f490dd3bee1d294fd544dfdbb12cc648e681c9ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 304,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d3238c61c251180123e38ab67ea6f2229c719284a3df2a08201ae6e48c10ba4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cff09a9-df31-c412-de42-e85fa50f4ff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inf_orthogonal_self_le_ker_restrict {W : Submodule R M} (b₁ : B.IsRefl) :
    W ⊓ B.orthogonal W ≤ (LinearMap.ker <| B.restrict W).map W.subtype := by
  rintro v ⟨hv : v ∈ W, hv' : v ∈ B.orthogonal W⟩
  simp only [Submodule.mem_map, mem_ker, restrict_apply, Submodule.coe_subtype, Subtype.exists,
    exists_and_left, exists_prop, exists_eq_right_right]
  refine ⟨?_, hv⟩
  ext ⟨w, hw⟩
  exact b₁ w v <| hv' w hw

variable [FiniteDimensional K V]

open Module Submodule

variable {B : BilinForm K V}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orthogonal/Variant8fafc86fafe56eecc3aa90ca62df0c446c72e124e8e8bd89a63a97e7c275c72b.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f490dd3bee1d294fd544dfdbb12cc648e681c9ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
