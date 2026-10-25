# app_spine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:295b75d0-744c-9442-d00c-0d90dbb79731",
  "kind": "theorem",
  "lexical_name": "app_spine",
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
  "slug": "app-spine--40dfbfb7cd554908d5715d51",
  "source": {
    "blob": "f06d5c7772a9e40940e303f0f187c184a751737a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1863,
    "line": 1852,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40dfbfb7cd554908d5715d512305fd44294b4ab17d3f97b52575b586fe9692ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:295b75d0-744c-9442-d00c-0d90dbb79731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1852–1863.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem app_spine {f a T : Expr S} (h : HasType P Γ (.app f a) T) :
    Neutral f ∨ ∃ D b n ns, Expr.app f a = (Expr.app (.lam D b) n).apps ns := by
  obtain ⟨D,E,hf,_,_⟩ := h.generation_app
  rcases hf.spine_shape with ⟨s,rfl⟩ | hn | ⟨A,B,rfl⟩ | ⟨A,b,ns,rfl⟩
  · exact False.elim hf.sort_cannot_have_product_type
  · exact .inl hn
  · exact False.elim hf.product_cannot_have_product_type
  · right
    cases ns with
    | nil => exact ⟨A,b,a,[],rfl⟩
    | cons n ns => exact ⟨A,b,n,ns ++ [a],by simp only [Expr.apps_append,Expr.apps]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndependentCoreFirstAttempt/Variant423c0f2dae5c7f44d059216ce008df22e8d2822cc029bab11381146cf102d750.lean#L1852).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f06d5c7772a9e40940e303f0f187c184a751737a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
