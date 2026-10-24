# Deficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95fad78f9c4c6a17d2cb8d1cd6a81334272161c6c8daf15519866e1b3fd76418",
  "kind": "def",
  "lexical_name": "Deficient",
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
  "slug": "deficient--c4ee9b24c19eff4b9930e6d8",
  "source": {
    "blob": "fd4661094c88f790dcf6a2d96484248e4784ebca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 71,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4ee9b24c19eff4b9930e6d8a25ec3b51e2e7dc7f3cbaf84f9d4c0a4c930e411",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95fad78f9c4c6a17d2cb8d1cd6a81334272161c6c8daf15519866e1b3fd76418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Deficient (n : ℕ) : Prop := ∑ i ∈ properDivisors n, i < n
deriving Decidable

/-- A positive natural number `n` is _pseudoperfect_ if there exists a subset of the proper
  divisors of `n` such that the sum of that subset is equal to `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/FactorisationProperties/Variant4cc70a6130767d7b0fd1c25783ce8e7528f77699a357217de3acd69d8f33345b.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd4661094c88f790dcf6a2d96484248e4784ebca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
