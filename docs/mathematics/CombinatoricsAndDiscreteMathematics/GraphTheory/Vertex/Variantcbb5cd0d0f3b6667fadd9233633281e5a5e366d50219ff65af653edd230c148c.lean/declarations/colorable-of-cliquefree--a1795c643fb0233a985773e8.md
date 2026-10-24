# colorable_of_cliqueFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a3f647eb-29c9-62f2-f09a-c719b64bcc8e",
  "kind": "theorem",
  "lexical_name": "colorable_of_cliqueFree",
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
  "slug": "colorable-of-cliquefree--a1795c643fb0233a985773e8",
  "source": {
    "blob": "a43cf49d870ee6b574d630adca05cbdba9a12ba3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 611,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantcbb5cd0d0f3b6667fadd9233633281e5a5e366d50219ff65af653edd230c148c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1795c643fb0233a985773e88902da17678efb21c7561cc1c31bef9da51b0589",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantcbb5cd0d0f3b6667fadd9233633281e5a5e366d50219ff65af653edd230c148c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3f647eb-29c9-62f2-f09a-c719b64bcc8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colorable_of_cliqueFree (f : ∀ (i : ι), V i)
    (hc : (completeMultipartiteGraph V).CliqueFree n) :
    (completeMultipartiteGraph V).Colorable (n - 1) := by
  cases n with
  | zero => exact absurd hc not_cliqueFree_zero
  | succ n =>
  have : Fintype ι := fintypeOfNotInfinite
    fun hinf ↦ not_cliqueFree_of_infinite V f hc
  apply (coloring V).colorable.mono
  have := not_cliqueFree_of_le_card V f le_rfl
  contrapose! this
  exact hc.mono this

end completeMultipartiteGraph

variable {W : Type*} {H : SimpleGraph W}

/-- If `H` is not `n`-colorable and `G` is `n`-colorable, then `G` is `H.Free`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantcbb5cd0d0f3b6667fadd9233633281e5a5e366d50219ff65af653edd230c148c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Vertex/Variantcbb5cd0d0f3b6667fadd9233633281e5a5e366d50219ff65af653edd230c148c.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43cf49d870ee6b574d630adca05cbdba9a12ba3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
