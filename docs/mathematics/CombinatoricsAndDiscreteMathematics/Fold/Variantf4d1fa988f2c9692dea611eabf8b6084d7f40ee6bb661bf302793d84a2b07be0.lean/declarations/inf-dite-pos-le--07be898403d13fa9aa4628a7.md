# inf_dite_pos_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb09d30a-de20-0a25-9d0b-76e83d256222",
  "kind": "theorem",
  "lexical_name": "inf_dite_pos_le",
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
  "slug": "inf-dite-pos-le--07be898403d13fa9aa4628a7",
  "source": {
    "blob": "8f80d574b0c736d498711bed6b3cbc271036ae5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 433,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07be898403d13fa9aa4628a71316cdbda4c29d4076d40525aedd54da7ec18ebe",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb09d30a-de20-0a25-9d0b-76e83d256222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 433–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_dite_pos_le (p : β → Prop) [DecidablePred p]
    {f : (b : β) → p b → α} {g : (b : β) → ¬p b → α} {b : β} (h₀ : b ∈ s) (h₁ : p b) :
    (s.inf fun i ↦ if h : p i then f i h else g i h) ≤ f b h₁ := by
  have : f b h₁ = (fun i ↦ if h : p i then f i h else g i h) b := by simp [h₁]
  rw [this]
  apply inf_le h₀

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantf4d1fa988f2c9692dea611eabf8b6084d7f40ee6bb661bf302793d84a2b07be0.lean#L433).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f80d574b0c736d498711bed6b3cbc271036ae5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
