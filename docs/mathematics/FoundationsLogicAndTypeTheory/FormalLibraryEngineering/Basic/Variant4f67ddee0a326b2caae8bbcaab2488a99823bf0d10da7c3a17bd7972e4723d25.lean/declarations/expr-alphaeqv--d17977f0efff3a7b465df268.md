# Expr.alphaEqv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e027abd5f6bf2ac296d76586ed76db19a386786f81d85fa6cc6d58ebe46818fc",
  "kind": "def",
  "lexical_name": "Expr.alphaEqv",
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
  "slug": "expr-alphaeqv--d17977f0efff3a7b465df268",
  "source": {
    "blob": "015625ea663b40ca53ede1d4c221358c4a685d5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 483,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d17977f0efff3a7b465df268d0b8a50dae1c94d2a5b67a19ff72f49a261437eb",
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

Occurrence: `declaration:e027abd5f6bf2ac296d76586ed76db19a386786f81d85fa6cc6d58ebe46818fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Expr.alphaEqv (ρ : IndexRenaming) : Expr → Expr → Bool
  | Expr.ctor i₁ ys₁,        Expr.ctor i₂ ys₂        => i₁ == i₂ && aeqv ρ ys₁ ys₂
  | Expr.reset n₁ x₁,        Expr.reset n₂ x₂        => n₁ == n₂ && aeqv ρ x₁ x₂
  | Expr.reuse x₁ i₁ u₁ ys₁, Expr.reuse x₂ i₂ u₂ ys₂ => aeqv ρ x₁ x₂ && i₁ == i₂ && u₁ == u₂ && aeqv ρ ys₁ ys₂
  | Expr.proj i₁ x₁,         Expr.proj i₂ x₂         => i₁ == i₂ && aeqv ρ x₁ x₂
  | Expr.uproj i₁ x₁,        Expr.uproj i₂ x₂        => i₁ == i₂ && aeqv ρ x₁ x₂
  | Expr.sproj n₁ o₁ x₁,     Expr.sproj n₂ o₂ x₂     => n₁ == n₂ && o₁ == o₂ && aeqv ρ x₁ x₂
  | Expr.fap c₁ ys₁,         Expr.fap c₂ ys₂         => c₁ == c₂ && aeqv ρ ys₁ ys₂
  | Expr.pap c₁ ys₁,         Expr.pap c₂ ys₂         => c₁ == c₂ && aeqv ρ ys₁ ys₂
  | Expr.ap x₁ ys₁,          Expr.ap x₂ ys₂          => aeqv ρ x₁ x₂ && aeqv ρ ys₁ ys₂
  | Expr.box ty₁ x₁,         Expr.box ty₂ x₂         => ty₁ == ty₂ && aeqv ρ x₁ x₂
  | Expr.unbox x₁,           Expr.unbox x₂           => aeqv ρ x₁ x₂
  | Expr.lit v₁,             Expr.lit v₂             => v₁ == v₂
  | Expr.isShared x₁,        Expr.isShared x₂        => aeqv ρ x₁ x₂
  | _,                        _                      => false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant4f67ddee0a326b2caae8bbcaab2488a99823bf0d10da7c3a17bd7972e4723d25.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `015625ea663b40ca53ede1d4c221358c4a685d5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
