# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52d4d8f99b497e83865bde30447eb2662386de18cd574da2d3549e7e7b90838d",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--dc222f6c0f19e8f6aadd3d72",
  "source": {
    "blob": "8ac946f67b9d4d7c1d9bc47ded3500701fc185c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 442,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Linarith/Variant1c62ee31bfe17491fe2f81666fc6b17761d9f61f7b635bac7b88364ca58b3268.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc222f6c0f19e8f6aadd3d72b380251c3041ec9c4df19e5e52fe5402c20c8326",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Linarith/Variant1c62ee31bfe17491fe2f81666fc6b17761d9f61f7b635bac7b88364ca58b3268.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52d4d8f99b497e83865bde30447eb2662386de18cd574da2d3549e7e7b90838d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (p q r s t u v w : ℕ) (h1 : p + u = q + t) (h2 : r + w = s + v) :
  p * r + q * s + (t * w + u * v) = p * s + q * r + (t * v + u * w) :=
by nlinarith

-- Tests involving a norm, including that squares in a type where `sq_nonneg` does not apply
-- do not cause an exception
variable {R : Type _} [Ring R] (abs : R → ℚ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Linarith/Variant1c62ee31bfe17491fe2f81666fc6b17761d9f61f7b635bac7b88364ca58b3268.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Linarith/Variant1c62ee31bfe17491fe2f81666fc6b17761d9f61f7b635bac7b88364ca58b3268.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ac946f67b9d4d7c1d9bc47ded3500701fc185c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
