# closureCommMonoidOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a17f0ae54a5c70f9dabe74d46a85be6a84242c261ae95142a46f8c46d8b0716b",
  "kind": "abbrev",
  "lexical_name": "closureCommMonoidOfComm",
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
  "slug": "closurecommmonoidofcomm--f4b23c6c721a18cf3ae656d5",
  "source": {
    "blob": "69e4da57e70d9d06c9f6d882ff417f694c5d0ec5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4b23c6c721a18cf3ae656d59d4b2f41b0ca6b750a8c63f25f9569931e26a3a5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a17f0ae54a5c70f9dabe74d46a85be6a84242c261ae95142a46f8c46d8b0716b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev closureCommMonoidOfComm {s : Set M} (hcomm : ∀ a ∈ s, ∀ b ∈ s, a * b = b * a) :
    CommMonoid (closure s) :=
  { (closure s).toMonoid with
    mul_comm := fun ⟨_, h₁⟩ ⟨_, h₂⟩ ↦
      have := closure_le_centralizer_centralizer s
      Subtype.ext <| Set.centralizer_centralizer_comm_of_comm hcomm _ (this h₁) _ (this h₂) }

end

end Submonoid
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variant33220f921c680ca881a09b58c51fe5f0fada38fcc355d995fd70ae6fc94e1e56.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e4da57e70d9d06c9f6d882ff417f694c5d0ec5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
