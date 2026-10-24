# FrobeniusNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b75c9dcac420f8b3b5d162c3c946b142b00aa18361b4954bbfcd6b8d8f6b2e22",
  "kind": "def",
  "lexical_name": "FrobeniusNumber",
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
  "slug": "frobeniusnumber--6b59d81d3dfc77a6379ce878",
  "source": {
    "blob": "333e457154c528d910040538b3b8327e2cf2cd5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 48,
    "path": "GRWTSK/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b59d81d3dfc77a6379ce878f6e180e875fe90d38986ed4920bc2269e60e221f",
  "verification": {
    "reference": "docs/verification/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b75c9dcac420f8b3b5d162c3c946b142b00aa18361b4954bbfcd6b8d8f6b2e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FrobeniusNumber (n : ℕ) (s : Set ℕ) : Prop :=
  IsGreatest { k | k ∉ AddSubmonoid.closure s } n
#align is_frobenius_number FrobeniusNumber

variable {m n : ℕ}

/-- The **Chicken McNugget theorem** stating that the Frobenius number
  of positive numbers `m` and `n` is `m * n - m - n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/FrobeniusNumber/Variantfa835315717694ed1be7c5542ff2b0f9aa5b3dcc3a3295d0a3cabed21ba01c95.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `333e457154c528d910040538b3b8327e2cf2cd5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
