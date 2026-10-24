# isHamiltonian_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f757d2e-7f3e-fd74-79f1-b87b0d6745e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4d905e4f-b56e-5159-c2d1-9e7685cdf8a9",
  "kind": "theorem",
  "lexical_name": "isHamiltonian_transfer",
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
  "slug": "ishamiltonian-transfer--72006576b7da7e2e163c1a26",
  "source": {
    "blob": "e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72006576b7da7e2e163c1a2613bfd7c41cecc3444a73b565f1c7e81f744f7365",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4d905e4f-b56e-5159-c2d1-9e7685cdf8a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHamiltonian_transfer [Finite α] {H : SimpleGraph α} (h) :
    (p.transfer H h).IsHamiltonian ↔ p.IsHamiltonian := by
  cases nonempty_fintype α
  simp [isHamiltonian_iff_isPath_and_length_eq]

alias ⟨_, IsHamiltonian.transfer⟩ := isHamiltonian_transfer

/-- A Hamiltonian cycle is a cycle that visits every vertex once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
