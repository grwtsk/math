# BivariantTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:46124ff0bb97ef26db87062cf11c286ddb84bd54e165c25eee1a236e0b7b776f",
  "kind": "structure",
  "lexical_name": "BivariantTheory",
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
  "slug": "bivarianttheory--5d218685d17db1a6a95f9d1a",
  "source": {
    "blob": "0c0205b65d8e2ead433a60d3479317f37952111b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 12,
    "path": "GRWTSK/Algebra/KTheory/FormalKK.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d218685d17db1a6a95f9d1a40cdcf9c097f9d1a14ec8b70634cc438b91d2ccb",
  "verification": {
    "reference": "docs/verification/Algebra/KTheory/FormalKK.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:46124ff0bb97ef26db87062cf11c286ddb84bd54e165c25eee1a236e0b7b776f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 12–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BivariantTheory (Obj : Type u) where
  Corr : Obj → Obj → Type v
  identity : ∀ A, Corr A A
  product : ∀ {A B C}, Corr A B → Corr B C → Corr A C
  identity_product :
    ∀ {A B} (α : Corr A B), product (identity A) α = α
  product_identity :
    ∀ {A B} (α : Corr A B), product α (identity B) = α
  product_assoc :
    ∀ {A B C D} (α : Corr A B) (β : Corr B C) (γ : Corr C D),
      product (product α β) γ = product α (product β γ)

/-- A two-sided invertible bivariant correspondence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KTheory/FormalKK.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KTheory/FormalKK.lean#L12).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c0205b65d8e2ead433a60d3479317f37952111b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
