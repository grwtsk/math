# FnBody.alphaEqv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acd1e68417523ad75bc5a5d5808077d6b2fb6c327dd166321db6f0b6de32db1a",
  "kind": "def",
  "lexical_name": "FnBody.alphaEqv",
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
  "slug": "fnbody-alphaeqv--824812f754bbace8854b5056",
  "source": {
    "blob": "015625ea663b40ca53ede1d4c221358c4a685d5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 519,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:824812f754bbace8854b5056915335476eb1f168549b2dcaa528c3707f5e9373",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:acd1e68417523ad75bc5a5d5808077d6b2fb6c327dd166321db6f0b6de32db1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def FnBody.alphaEqv : IndexRenaming → FnBody → FnBody → Bool
  | ρ, FnBody.vdecl x₁ t₁ v₁ b₁,      FnBody.vdecl x₂ t₂ v₂ b₂      => t₁ == t₂ && aeqv ρ v₁ v₂ && alphaEqv (addVarRename ρ x₁.idx x₂.idx) b₁ b₂
  | ρ, FnBody.jdecl j₁ ys₁ v₁ b₁,  FnBody.jdecl j₂ ys₂ v₂ b₂        => match addParamsRename ρ ys₁ ys₂ with
    | some ρ' => alphaEqv ρ' v₁ v₂ && alphaEqv (addVarRename ρ j₁.idx j₂.idx) b₁ b₂
    | none    => false
  | ρ, FnBody.set x₁ i₁ y₁ b₁,        FnBody.set x₂ i₂ y₂ b₂        => aeqv ρ x₁ x₂ && i₁ == i₂ && aeqv ρ y₁ y₂ && alphaEqv ρ b₁ b₂
  | ρ, FnBody.uset x₁ i₁ y₁ b₁,       FnBody.uset x₂ i₂ y₂ b₂       => aeqv ρ x₁ x₂ && i₁ == i₂ && aeqv ρ y₁ y₂ && alphaEqv ρ b₁ b₂
  | ρ, FnBody.sset x₁ i₁ o₁ y₁ t₁ b₁, FnBody.sset x₂ i₂ o₂ y₂ t₂ b₂ =>
    aeqv ρ x₁ x₂ && i₁ = i₂ && o₁ = o₂ && aeqv ρ y₁ y₂ && t₁ == t₂ && alphaEqv ρ b₁ b₂
  | ρ, FnBody.setTag x₁ i₁ b₁,        FnBody.setTag x₂ i₂ b₂        => aeqv ρ x₁ x₂ && i₁ == i₂ && alphaEqv ρ b₁ b₂
  | ρ, FnBody.inc x₁ n₁ c₁ p₁ b₁,     FnBody.inc x₂ n₂ c₂ p₂ b₂     => aeqv ρ x₁ x₂ && n₁ == n₂ && c₁ == c₂ && p₁ == p₂ && alphaEqv ρ b₁ b₂
  | ρ, FnBody.dec x₁ n₁ c₁ p₁ b₁,     FnBody.dec x₂ n₂ c₂ p₂ b₂     => aeqv ρ x₁ x₂ && n₁ == n₂ && c₁ == c₂ && p₁ == p₂ && alphaEqv ρ b₁ b₂
  | ρ, FnBody.del x₁ b₁,              FnBody.del x₂ b₂              => aeqv ρ x₁ x₂ && alphaEqv ρ b₁ b₂
  | ρ, FnBody.case n₁ x₁ _ alts₁,     FnBody.case n₂ x₂ _ alts₂     => n₁ == n₂ && aeqv ρ x₁ x₂ && Array.isEqv alts₁ alts₂ (fun alt₁ alt₂ =>
     match alt₁, alt₂ with
     | Alt.ctor i₁ b₁, Alt.ctor i₂ b₂ => i₁ == i₂ && alphaEqv ρ b₁ b₂
     | Alt.default b₁, Alt.default b₂ => alphaEqv ρ b₁ b₂
     | _,              _              => false)
  | ρ, FnBody.jmp j₁ ys₁,             FnBody.jmp j₂ ys₂             => j₁ == j₂ && aeqv ρ ys₁ ys₂
  | ρ, FnBody.ret x₁,                 FnBody.ret x₂                 => aeqv ρ x₁ x₂
  | _, FnBody.unreachable,            FnBody.unreachable            => true
  | _, _,                             _                             => false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015625ea663b40ca53ede1d4c221358c4a685d5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
