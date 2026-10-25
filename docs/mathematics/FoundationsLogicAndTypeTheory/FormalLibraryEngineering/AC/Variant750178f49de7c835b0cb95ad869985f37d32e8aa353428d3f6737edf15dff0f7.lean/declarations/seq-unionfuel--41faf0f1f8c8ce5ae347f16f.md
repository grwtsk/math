# Seq.unionFuel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7aef6bb18f2506a66a70917130ba5f14178c18e480e3cc0cad8f4be7500a0e36",
  "kind": "def",
  "lexical_name": "Seq.unionFuel",
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
  "slug": "seq-unionfuel--41faf0f1f8c8ce5ae347f16f",
  "source": {
    "blob": "5927188343125e254bc49b051aa2c9885c70d0e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 393,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41faf0f1f8c8ce5ae347f16f57ef25df516dab1fb2407ad9cf9c25cbe4918c69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7aef6bb18f2506a66a70917130ba5f14178c18e480e3cc0cad8f4be7500a0e36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Seq.unionFuel (fuel : Nat) (s₁ s₂ : Seq) : Seq :=
  match fuel with
  | 0 => s₁.concat s₂
  | fuel + 1 =>
    match s₁, s₂ with
    | .var x₁, .var x₂  => if Nat.blt x₁ x₂ then .cons x₁ (.var x₂) else .cons x₂ (.var x₁)
    | .var x₁, .cons .. => s₂.insert x₁
    | .cons .., .var x₂ => s₁.insert x₂
    | .cons x₁ s₁, .cons x₂ s₂ =>
      if Nat.blt x₁ x₂ then
        .cons x₁ (unionFuel fuel s₁ (.cons x₂ s₂))
      else
        .cons x₂ (unionFuel fuel (.cons x₁ s₁) s₂)

-- Kernel version for `unionFuel`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant750178f49de7c835b0cb95ad869985f37d32e8aa353428d3f6737edf15dff0f7.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5927188343125e254bc49b051aa2c9885c70d0e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
