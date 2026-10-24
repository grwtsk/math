# finprod_emb_domain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d28f6c5-9e12-d02d-7b61-4ec97ea7fc24",
  "kind": "theorem",
  "lexical_name": "finprod_emb_domain",
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
  "slug": "finprod-emb-domain--100bc6d5f93c43a725d6f667",
  "source": {
    "blob": "c9a01fbfb9236526e469e1e431c587b74bfe9566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1156,
    "line": 1152,
    "path": "GRWTSK/Algebra/GroupTheory/Finprod/Variant9e58cc9841f54036144bd0a9a80e4e7965798d2ccf485228a7c87072754e06d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:100bc6d5f93c43a725d6f667d216a6bfe49ae92a4c6a9bf7995ef0b41fc0625c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finprod/Variant9e58cc9841f54036144bd0a9a80e4e7965798d2ccf485228a7c87072754e06d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d28f6c5-9e12-d02d-7b61-4ec97ea7fc24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1152–1156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finprod_emb_domain (f : α ↪ β) [DecidablePred (· ∈ Set.range f)] (g : α → M) :
    (∏ᶠ b : β, if h : b ∈ Set.range f then g (Classical.choose h) else 1) = ∏ᶠ a : α, g a :=
  finprod_emb_domain' f.injective g

end type
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finprod/Variant9e58cc9841f54036144bd0a9a80e4e7965798d2ccf485228a7c87072754e06d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finprod/Variant9e58cc9841f54036144bd0a9a80e4e7965798d2ccf485228a7c87072754e06d5.lean#L1152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a01fbfb9236526e469e1e431c587b74bfe9566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
