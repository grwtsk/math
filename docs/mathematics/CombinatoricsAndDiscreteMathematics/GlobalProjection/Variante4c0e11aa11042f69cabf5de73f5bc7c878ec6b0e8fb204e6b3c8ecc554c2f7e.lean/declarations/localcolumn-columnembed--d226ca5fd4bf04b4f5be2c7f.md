# localColumn?_columnEmbed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daff3aa517821978c367d0f0c3f4b9d318970df8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f42da43-e8ba-6ac0-2c43-28a691499c26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f74edb64-3213-65d1-70dd-9416de381bb6",
  "kind": "theorem",
  "lexical_name": "localColumn?_columnEmbed",
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
  "slug": "localcolumn-columnembed--d226ca5fd4bf04b4f5be2c7f",
  "source": {
    "blob": "daff3aa517821978c367d0f0c3f4b9d318970df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d226ca5fd4bf04b4f5be2c7f29e37ca4519f41cc74e6f3144380be24596068c1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f74edb64-3213-65d1-70dd-9416de381bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localColumn?_columnEmbed
    (L : MatrixLocus m n) (j : Fin L.columns.card) :
    L.localColumn? (L.columnEmbed j) = some j := by
  simp only [localColumn?, L.columnEmbed_mem, ↓reduceDIte, Option.some.injEq]
  have hsub :
      (⟨L.columnEmbed j, L.columnEmbed_mem j⟩ : L.columns) =
        L.columns.orderIsoOfFin rfl j := by
    apply Subtype.ext
    rfl
  rw [hsub]
  exact (L.columns.orderIsoOfFin rfl).symm_apply_apply j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GlobalProjection/Variante4c0e11aa11042f69cabf5de73f5bc7c878ec6b0e8fb204e6b3c8ecc554c2f7e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daff3aa517821978c367d0f0c3f4b9d318970df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
