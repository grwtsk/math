# isBigO_self_const_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b69a6243-0584-9b53-caf1-313590e9e799",
  "kind": "theorem",
  "lexical_name": "isBigO_self_const_mul",
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
  "slug": "isbigo-self-const-mul--3ef42821a82e365660b3c12d",
  "source": {
    "blob": "7daa2be1e097a957520ff49a645bc9e7c6518972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1175,
    "line": 1172,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variant1bfd6b6e6d35934a73b33295c42ba38861e8a26c84154de8d878cc3585a2fd7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef42821a82e365660b3c12dbdda48272a9d6cd273c05bd5b59d357237b3fb4a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Defs/Variant1bfd6b6e6d35934a73b33295c42ba38861e8a26c84154de8d878cc3585a2fd7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b69a6243-0584-9b53-caf1-313590e9e799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1172–1175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBigO_self_const_mul {c : S} (hc : c ≠ 0) (f : α → S) (l : Filter α) :
    f =O[l] fun x ↦ c * f x :=
  (isBigOWith_self_const_mul hc f l).isBigO

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Defs/Variant1bfd6b6e6d35934a73b33295c42ba38861e8a26c84154de8d878cc3585a2fd7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Defs/Variant1bfd6b6e6d35934a73b33295c42ba38861e8a26c84154de8d878cc3585a2fd7b.lean#L1172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7daa2be1e097a957520ff49a645bc9e7c6518972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
