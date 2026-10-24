# finite_of_finDim_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d97aa2403c7a6cf5c7187a3ae668fe1cba3e93a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 118,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85e031f4-48ee-c1ad-797a-803e2f707666",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:44aece56-dfe1-bc42-445b-86d2ef235e96",
  "kind": "theorem",
  "lexical_name": "finite_of_finDim_ne_zero",
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
  "slug": "finite-of-findim-ne-zero--0ffab8656cdb9cd8e4815dc7",
  "source": {
    "blob": "d97aa2403c7a6cf5c7187a3ae668fe1cba3e93a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 118,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ffab8656cdb9cd8e4815dc7be796546fda1397f0a7c974bcc9bb4fec3b7f070",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44aece56-dfe1-bc42-445b-86d2ef235e96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_finDim_ne_zero [StrongRankCondition R] (s : AffineSubspace R A)
    [Module.Free R s.direction] (h : finDim s ≠ 0) : Module.Finite R s.direction := by
  rcases eq_or_ne s ⊥ with rfl | hs
  · rw [direction_bot]
    infer_instance
  exact Module.finite_of_finrank_pos <| Nat.pos_of_ne_zero (by simpa [finDim_eq_finrank hs] using h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dimension/Variantdcd56c00f066be6e560c50597234f967ce19b0d16390abe49f31836cca086cb8.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97aa2403c7a6cf5c7187a3ae668fe1cba3e93a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
