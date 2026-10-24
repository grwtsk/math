# eigenvalues_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e9f40a4-02d0-ea0b-8608-bde30eb75364",
  "kind": "theorem",
  "lexical_name": "eigenvalues_antitone",
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
  "slug": "eigenvalues-antitone--ad3c210e7d7796cfdabe9792",
  "source": {
    "blob": "05b6d02e7acf0b421936fa8eb49429cc88d03c8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 258,
    "path": "GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad3c210e7d7796cfdabe97928d06b7bb317fee1414f0ad70ab404a15d6fd9275",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e9f40a4-02d0-ea0b-8608-bde30eb75364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenvalues_antitone (hT : T.IsSymmetric) (hn : Module.finrank 𝕜 E = n) :
    Antitone (hT.eigenvalues hn) := by
  rw [eigenvalues_def, ← Function.comp_assoc]
  refine Monotone.comp_antitone ?_ ?_
  · apply Tuple.monotone_sort
  intro _ _ h
  exact Fin.rev_le_rev.mpr h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Spectrum/Variant9dde8387ebb9d69ffe0904bca5ac0d2a0b32e26aa302f32d499c0a3751db4836.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05b6d02e7acf0b421936fa8eb49429cc88d03c8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
