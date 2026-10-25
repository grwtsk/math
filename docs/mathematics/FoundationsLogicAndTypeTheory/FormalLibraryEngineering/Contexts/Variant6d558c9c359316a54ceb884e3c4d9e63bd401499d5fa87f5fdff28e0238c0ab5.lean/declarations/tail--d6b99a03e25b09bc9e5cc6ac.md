# tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e7349c2-2a88-bd50-9a27-d11ee06e4a3b",
  "kind": "theorem",
  "lexical_name": "tail",
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
  "slug": "tail--d6b99a03e25b09bc9e5cc6ac",
  "source": {
    "blob": "833c93b27c1f01fb7f3b375c689dea8e4a2fddaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 481,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6b99a03e25b09bc9e5cc6acc0e27a4f37a2937d8c977330cc2eedccd713b0ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e7349c2-2a88-bd50-9a27-d11ee06e4a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail {A : Expr S} (h : Ω.TypedSubstitution (A :: Γ) σ) :
    Ω.TypedSubstitution Γ (σ ∘ Nat.succ) := by
  intro n B hn
  have hh := h (n + 1) (B.rename Nat.succ) (.succ A hn)
  simpa only [Expr.subst_rename, Function.comp_apply] using hh

/-- One common stage suffices for every declaration image, despite the
substitution being presented as a total function on indices. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contexts/Variant6d558c9c359316a54ceb884e3c4d9e63bd401499d5fa87f5fdff28e0238c0ab5.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `833c93b27c1f01fb7f3b375c689dea8e4a2fddaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
