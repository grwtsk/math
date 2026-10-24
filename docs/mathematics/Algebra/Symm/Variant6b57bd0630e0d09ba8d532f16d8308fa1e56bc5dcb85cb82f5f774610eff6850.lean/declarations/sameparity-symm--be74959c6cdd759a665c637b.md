# sameParity_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebab11663e1f93fb20a84b423d3aaa083f9313da15d60d53e5b256e0c87e0c6b",
  "kind": "def",
  "lexical_name": "sameParity_symm",
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
  "slug": "sameparity-symm--be74959c6cdd759a665c637b",
  "source": {
    "blob": "4ae3ef96355bc340e053beb605dfb3cd602afae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 14,
    "path": "GRWTSK/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be74959c6cdd759a665c637bae6e5cfc4dab24f3379a7508751a021a3927fc85",
  "verification": {
    "reference": "docs/verification/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebab11663e1f93fb20a84b423d3aaa083f9313da15d60d53e5b256e0c87e0c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[symm] def sameParity_symm (n m : Nat) : sameParity n m → sameParity m n := Eq.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Symm/Variant6b57bd0630e0d09ba8d532f16d8308fa1e56bc5dcb85cb82f5f774610eff6850.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ae3ef96355bc340e053beb605dfb3cd602afae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
