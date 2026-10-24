# Certificate.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9e2edc846db54d9a4c694c6fc2649d419125460c8b3316903c19cd5bf9985a5",
  "kind": "def",
  "lexical_name": "Certificate.Valid",
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
  "slug": "certificate-valid--e69698a1941afbddef0f164f",
  "source": {
    "blob": "15000c369819b4bc559c02b467da162e9bf794fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 103,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e69698a1941afbddef0f164f879ed6fca7e5f18a03917acf81a0501022cbb4d6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e9e2edc846db54d9a4c694c6fc2649d419125460c8b3316903c19cd5bf9985a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Certificate.Valid {n m : ℕ} (c : Certificate n m) : Prop :=
  (∀ i, c.states (c.seeds i) = seed i) ∧
  (∀ s i, c.states (c.transition s i) = mutate c.adjacency i (c.states s)) ∧
  (∀ s, play c.adjacency (c.words s) (seed (c.origin s)) = c.states s) ∧
  Function.Injective c.states

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Calculus/Variantf8f863420f7b9fa573c652e397fb17490418e8ef9bff0af07c1555000d1942a8.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15000c369819b4bc559c02b467da162e9bf794fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
