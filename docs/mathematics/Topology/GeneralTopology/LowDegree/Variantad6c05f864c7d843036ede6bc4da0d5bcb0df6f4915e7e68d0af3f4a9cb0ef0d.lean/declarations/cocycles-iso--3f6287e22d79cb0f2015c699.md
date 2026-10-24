# cocycles₀Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37635b6eb97438ba4562a6d2d83f6fc0e89d6361773e271f7cb57d5b894810c6",
  "kind": "abbrev",
  "lexical_name": "cocycles₀Iso",
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
  "slug": "cocycles-iso--3f6287e22d79cb0f2015c699",
  "source": {
    "blob": "aa2020e2156f3ada0708fa5152f5696d1dd4b571",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 55,
    "path": "GRWTSK/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f6287e22d79cb0f2015c699a9521db7e4512ab892ea445e33daab2a5958973c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37635b6eb97438ba4562a6d2d83f6fc0e89d6361773e271f7cb57d5b894810c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev cocycles₀Iso : cocycles X 0 ≅
    ↧((homogeneousCochains X).d 0 1).hom.ker :=
  Limits.KernelFork.mapIsoOfIsLimit ((homogeneousCochains X).cyclesIsKernel 0 1 (by simp))
    (TopModuleCat.isLimitKer _) (Iso.refl _)

/-- The isomorphism between the kernel of the zeroth differential and
the invariants of a representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowDegree/Variantad6c05f864c7d843036ede6bc4da0d5bcb0df6f4915e7e68d0af3f4a9cb0ef0d.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa2020e2156f3ada0708fa5152f5696d1dd4b571` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
