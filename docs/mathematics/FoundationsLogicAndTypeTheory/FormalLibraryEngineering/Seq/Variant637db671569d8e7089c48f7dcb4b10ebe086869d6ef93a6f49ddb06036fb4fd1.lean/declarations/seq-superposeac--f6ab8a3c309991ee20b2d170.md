# Seq.superposeAC?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53c9b44bd7182143e501223c73060409e66c3027a44d4f16bf90fcde1ac66ce8",
  "kind": "def",
  "lexical_name": "Seq.superposeAC?",
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
  "slug": "seq-superposeac--f6ab8a3c309991ee20b2d170",
  "source": {
    "blob": "a71ef5c45e22715c48dc913881aa1c669046d021",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 270,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6ab8a3c309991ee20b2d1708730dc11987965443716d7ba677df957aa5523c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53c9b44bd7182143e501223c73060409e66c3027a44d4f16bf90fcde1ac66ce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Seq.superposeAC? (s₁ s₂ : Seq) : Option (Seq × Seq × Seq) :=
  go s₁ s₂ none none none
where
  mkResult (r₁ c r₂ : Option Seq) : Option (Seq × Seq × Seq) :=
    match r₁, c, r₂ with
    | some r₁, some c, some r₂ => some (r₁, c, r₂)
    | _, _, _ => none

  go (s₁ s₂ : Seq) (r₁ c r₂ : Option Seq) : Option (Seq × Seq × Seq) :=
    match s₁, s₂ with
    | .var x, .var y =>
      if x == y then mkResult (rev r₁) (rev (push c x)) (rev r₂)
      else mkResult (rev (push r₁ x)) (rev c) (rev (push r₂ y))
    | .var x, .cons y s₂ =>
      if x == y then mkResult (rev r₁) (rev (push c x)) (app (rev r₂) s₂)
      else if x < y then mkResult (rev (push r₁ x)) (rev c) (app (rev r₂) (.cons y s₂))
      else go (.var x) s₂ r₁ c (push r₂ y)
    | .cons x s₁, .var y =>
      if x == y then mkResult (app (rev r₁) s₁) (rev (push c x)) (rev r₂)
      else if x < y then go s₁ (.var y) (push r₁ x) c r₂
      else mkResult (app (rev r₁) (.cons x s₁)) (rev c) (rev (push r₂ y))
    | .cons x s₁, .cons y s₂ =>
      if x == y then go s₁ s₂ r₁ (push c x) r₂
      else if x < y then go s₁ (.cons y s₂) (push r₁ x) c r₂
      else go (.cons x s₁) s₂ r₁ c (push r₂ y)

/--
Returns `some (p, c, s)` if `s₁ == p ++ c` and `s₂ == c ++ s`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Seq/Variant637db671569d8e7089c48f7dcb4b10ebe086869d6ef93a6f49ddb06036fb4fd1.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71ef5c45e22715c48dc913881aa1c669046d021` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
