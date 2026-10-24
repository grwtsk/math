# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:882ef5b1f88aa369d379f386f598f75a6d94ce0796487d6ba4c33442fa364cbd",
  "kind": "instance",
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
  "slug": "instance--af085561f08bcc0b856ba9ac",
  "source": {
    "blob": "2920eb99908f320fbd338d5d5f2b39bf6faf4719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 344,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af085561f08bcc0b856ba9ace145552aefe7ec74ed1791094e5300013922475f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:882ef5b1f88aa369d379f386f598f75a6d94ce0796487d6ba4c33442fa364cbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : OrderBot (Multiset α) where
  bot := 0
  bot_le := zero_le

/-- This is a `rfl` and `simp` version of `bot_eq_zero`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZeroCons/Variantb8fe2c8f7e3f6f9899c40a3667343bc6d25e9aea2f032a684e99c8d2e6d4921d.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2920eb99908f320fbd338d5d5f2b39bf6faf4719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
