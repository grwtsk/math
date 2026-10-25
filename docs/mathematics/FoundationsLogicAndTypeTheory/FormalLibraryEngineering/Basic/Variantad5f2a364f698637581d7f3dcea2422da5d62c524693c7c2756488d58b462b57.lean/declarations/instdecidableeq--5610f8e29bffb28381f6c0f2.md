# instDecidableEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50b83bd7e88e2e3b5847fbd7b7933313b0df4bf3411e44cf9cb9e3ff2e6905e4",
  "kind": "instance",
  "lexical_name": "instDecidableEq",
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
  "slug": "instdecidableeq--5610f8e29bffb28381f6c0f2",
  "source": {
    "blob": "8d66d28a07acca798415d7647d96223c00662948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5610f8e29bffb28381f6c0f241d70f5657996a1af6b0c693f340a5336bfc5186",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50b83bd7e88e2e3b5847fbd7b7933313b0df4bf3411e44cf9cb9e3ff2e6905e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instDecidableEq {α} [inst : DecidableEq α] : DecidableEq (Option α) := fun a b =>
  /-
  Structured for compatibility with the decidable-equality-with-none instances.
  -/
  match a with
  | none => match b with
    | none => .isTrue rfl
    | some _ => .isFalse (fun h => Option.noConfusion rfl (heq_of_eq h))
  | some a => match b with
    | none => .isFalse (fun h => Option.noConfusion rfl (heq_of_eq h))
    | some b => match inst a b with
      | .isTrue h => .isTrue (h ▸ rfl)
      | .isFalse n => .isFalse (fun h => Option.noConfusion rfl (heq_of_eq h) (fun h' => absurd (eq_of_heq h') n))

/--
Equality with `none` is decidable even if the wrapped type does not have decidable equality.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantad5f2a364f698637581d7f3dcea2422da5d62c524693c7c2756488d58b462b57.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d66d28a07acca798415d7647d96223c00662948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
