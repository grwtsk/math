# IsPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:479021275ef6c711f7cc136f8e0f6058cdeca9a84de4fa7e0e916d20768073d8",
  "kind": "inductive",
  "lexical_name": "IsPoly",
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
  "slug": "ispoly--a8b8eec2237ccac290e1156f",
  "source": {
    "blob": "bf1956a14f0558af61d22d906927310f409b5627",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8b8eec2237ccac290e1156fba6f2caaba9c64000922b3de01e67e6f3e1d1984",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:479021275ef6c711f7cc136f8e0f6058cdeca9a84de4fa7e0e916d20768073d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive IsPoly : ((α → ℕ) → ℤ) → Prop
  | proj : ∀ i, IsPoly fun x : α → ℕ => x i
  | const : ∀ n : ℤ, IsPoly fun _ : α → ℕ => n
  | sub : ∀ {f g : (α → ℕ) → ℤ}, IsPoly f → IsPoly g → IsPoly fun x => f x - g x
  | mul : ∀ {f g : (α → ℕ) → ℤ}, IsPoly f → IsPoly g → IsPoly fun x => f x * g x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Dioph/Variant39746f0854f17fdca4b33d85e06cf88eebb61815b998acfa0590a101c7abd074.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf1956a14f0558af61d22d906927310f409b5627` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
