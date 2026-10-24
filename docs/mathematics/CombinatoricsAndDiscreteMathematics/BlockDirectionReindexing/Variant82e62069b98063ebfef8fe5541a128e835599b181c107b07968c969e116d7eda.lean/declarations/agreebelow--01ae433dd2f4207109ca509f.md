# AgreeBelow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2069b0a677021511415676cd1331bb907d382a8ae0512c8676611c583ddae01b",
  "kind": "def",
  "lexical_name": "AgreeBelow",
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
  "slug": "agreebelow--01ae433dd2f4207109ca509f",
  "source": {
    "blob": "ac8b1b3fa5c0addd1b7edec3293b7207ccfa7084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 203,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01ae433dd2f4207109ca509f0ed241859fc3e4c2e08acdf71e15b43cc0e8778d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2069b0a677021511415676cd1331bb907d382a8ae0512c8676611c583ddae01b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AgreeBelow
    (n : ℕ)
    (κ₁ κ₂ : DirectionCumulantFamily E R) : Prop :=
  ∀ m : ℕ, m < n →
    ∀ directions : Fin m → E,
      κ₁ m directions = κ₂ m directions

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BlockDirectionReindexing/Variant82e62069b98063ebfef8fe5541a128e835599b181c107b07968c969e116d7eda.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac8b1b3fa5c0addd1b7edec3293b7207ccfa7084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
