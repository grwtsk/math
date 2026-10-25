# eqv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e13e748e31202a0b28179322d72375d9ccd54913741987eae41f82411f35499e",
  "kind": "def",
  "lexical_name": "eqv",
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
  "slug": "eqv--dad9cbe3ad1b7440340b243c",
  "source": {
    "blob": "3d40535730da2230421c4599cb819a19c9852b7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dad9cbe3ad1b7440340b243c3bb59607222a9967588c50a68a08fdcb2c53481e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e13e748e31202a0b28179322d72375d9ccd54913741987eae41f82411f35499e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def eqv (code₁ code₂ : Code pu) : EqvM Bool := do
  match code₁, code₂ with
  | .let decl₁ k₁, .let decl₂ k₂ =>
    eqvType decl₁.type decl₂.type <&&>
    eqvLetValue decl₁.value decl₂.value <&&>
    withFVar decl₁.fvarId decl₂.fvarId (eqv k₁ k₂)
  | .fun decl₁ k₁ _, .fun decl₂ k₂ _
  | .jp decl₁ k₁, .jp decl₂ k₂ =>
    eqvType decl₁.type decl₂.type <&&>
    withParams decl₁.params decl₂.params (eqv decl₁.value decl₂.value) <&&>
    withFVar decl₁.fvarId decl₂.fvarId (eqv k₁ k₂)
  | .return fvarId₁, .return fvarId₂ => eqvFVar fvarId₁ fvarId₂
  | .unreach type₁, .unreach type₂ => eqvType type₁ type₂
  | .jmp fvarId₁ args₁, .jmp fvarId₂ args₂ => eqvFVar fvarId₁ fvarId₂ <&&> eqvArgs args₁ args₂
  | .cases c₁, .cases c₂ =>
    eqvFVar c₁.discr c₂.discr <&&>
    eqvType c₁.resultType c₂.resultType <&&>
    eqvAlts c₁.alts c₂.alts
  | .oset fvarId₁ i₁ y₁ k₁ _, .oset fvarId₂ i₂ y₂ k₂ _ =>
    pure (i₁ == i₂) <&&>
    eqvFVar fvarId₁ fvarId₂ <&&>
    eqvArg y₁ y₂ <&&>
    eqv k₁ k₂
  | .sset fvarId₁ i₁ offset₁ y₁ ty₁ k₁ _, .sset fvarId₂ i₂ offset₂ y₂ ty₂ k₂ _ =>
    pure (i₁ == i₂) <&&>
    pure (offset₁ == offset₂) <&&>
    eqvFVar fvarId₁ fvarId₂ <&&>
    eqvFVar y₁ y₂ <&&>
    eqvType ty₁ ty₂ <&&>
    eqv k₁ k₂
  | .uset fvarId₁ i₁ y₁ k₁ _, .uset fvarId₂ i₂ y₂ k₂ _ =>
    pure (i₁ == i₂) <&&>
    eqvFVar fvarId₁ fvarId₂ <&&>
    eqvFVar y₁ y₂ <&&>
    eqv k₁ k₂
  | .setTag fvarId₁ c₁ k₁ _, .setTag fvarId₂ c₂ k₂ _ =>
    pure (c₁ == c₂) <&&>
    eqvFVar fvarId₁ fvarId₂ <&&>
    eqv k₁ k₂
  | .inc fvarId₁ n₁ c₁ p₁ k₁ _, .inc fvarId₂ n₂ c₂ p₂ k₂ _ =>
    pure (n₁ == n₂) <&&>
    pure (c₁ == c₂) <&&>
    pure (p₁ == p₂) <&&>
    eqvFVar fvarId₁ fvarId₂ <&&>
    eqv k₁ k₂
  | .dec fvarId₁ n₁ c₁ p₁ o₁ k₁ _, .dec fvarId₂ n₂ c₂ p₂ o₂ k₂ _ =>
    pure (n₁ == n₂) <&&>
    pure (c₁ == c₂) <&&>
    pure (p₁ == p₂) <&&>
    pure (o₁ == o₂) <&&>
    eqvFVar fvarId₁ fvarId₂ <&&>
    eqv k₁ k₂
  | .del fvarId₁ k₁ _, .del fvarId₂ k₂ _ =>
    eqvFVar fvarId₁ fvarId₂ <&&>
    eqv k₁ k₂
  | _, _ => return false

end

end AlphaEqv

/--
Return `true` if `c₁` and `c₂` are alpha equivalent.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaEqv/Variantf62bf73971d21483f1e285ecc74980bdc12baa0bf5c494fed4dc5d021aeded43.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d40535730da2230421c4599cb819a19c9852b7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
