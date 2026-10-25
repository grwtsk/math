# contSupp_cons₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aff48f89-670b-1914-4bd9-f598b1fb7e76",
  "kind": "theorem",
  "lexical_name": "contSupp_cons₂",
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
  "slug": "contsupp-cons--423daf6b6a8cfcf8d6039d6c",
  "source": {
    "blob": "fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1073,
    "line": 1069,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:423daf6b6a8cfcf8d6039d6c519948be397f2ca00c97ada763e5ad6631ce026a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff48f89-670b-1914-4bd9-f598b1fb7e76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1069–1073.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contSupp_cons₂ (k) :
    contSupp (Cont'.cons₂ k) = trStmts₁ (head stack <| Λ'.ret k) ∪ contSupp k :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMToPartrec/Variantaa7c1d3d568b47b03f0be9c3f592931e445c893a416f773b8bb177d593f14515.lean#L1069).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb06a8d1d2fdf7f1b719bedcdedd992ecff2c380` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
