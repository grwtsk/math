# HasExponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a64057cf5fe426456a9a3374dfd772c604480eb0ea2a06b7e7d7bf5bd42bc052",
  "kind": "class",
  "lexical_name": "HasExponent",
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
  "slug": "hasexponent--71cee4c4308e4b7ce08614f6",
  "source": {
    "blob": "e79f7a4beeac97a663bc8c65201575c409812f77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 50,
    "path": "GRWTSK/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71cee4c4308e4b7ce08614f68be6a70e7e5b488d5acc9e15061ec581bf10f8da",
  "verification": {
    "reference": "docs/verification/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a64057cf5fe426456a9a3374dfd772c604480eb0ea2a06b7e7d7bf5bd42bc052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasExponent : Prop where
  has_exponent : ∃ e, ∀ a, a ^ ringExpChar K ^ e ∈ (algebraMap K L).range

/-- Version of `hasExponent_iff` using `ExpChar`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Exponent/Variantcfc57f5c9be082bd4b7ff4e86c94e74a0b37087e91f145c3af9cecd4aeeda824.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e79f7a4beeac97a663bc8c65201575c409812f77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
