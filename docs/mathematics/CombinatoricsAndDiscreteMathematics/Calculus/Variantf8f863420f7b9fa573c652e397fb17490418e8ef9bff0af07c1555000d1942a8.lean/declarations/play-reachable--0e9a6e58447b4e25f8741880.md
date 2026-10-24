# play_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b2670d7b-4565-1c51-2365-f752e7ba7ad8",
  "kind": "theorem",
  "lexical_name": "play_reachable",
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
  "slug": "play-reachable--0e9a6e58447b4e25f8741880",
  "source": {
    "blob": "15000c369819b4bc559c02b467da162e9bf794fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e9a6e58447b4e25f8741880bf05d2e24f380703a458d634fd9d3a8a2a741f44",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2670d7b-4565-1c51-2365-f752e7ba7ad8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem play_reachable {n : ℕ} (A : Matrix (Fin n) (Fin n) ℤ)
    (w : List (Fin n)) {x : Population n} (hx : Reachable A x) :
    Reachable A (play A w x) := by
  induction w generalizing x with
  | nil => exact hx
  | cons i w ih => exact ih (Reachable.step i hx)

/-- Certificate data has no completeness premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15000c369819b4bc559c02b467da162e9bf794fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
