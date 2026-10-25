# Seq.unionFuel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:188232c65fedf780d84889087b56f2481517a074aa3e342c7c0feac6e414b748",
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
  "slug": "seq-unionfuel--9966ec1bd208e3a5b057a336",
  "source": {
    "blob": "89ada7971cade077f59d5bb40b210897a5cad7e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 401,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9966ec1bd208e3a5b057a336f298aad874ad20ed20e471440f76bb89897d5f47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:188232c65fedf780d84889087b56f2481517a074aa3e342c7c0feac6e414b748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 401–415.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean#L401).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89ada7971cade077f59d5bb40b210897a5cad7e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
