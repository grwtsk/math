# TypeIIShellFactorBlock.Left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:208893b94b9fd242263d9cdafdb397c1f727fe44868652d5149643568cac5e29",
  "kind": "abbrev",
  "lexical_name": "TypeIIShellFactorBlock.Left",
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
  "slug": "typeiishellfactorblock-left--4f7e034865eb0ed78dbf0641",
  "source": {
    "blob": "cbb03424e1107c51b98bd3b15ae45091417f206d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f7e034865eb0ed78dbf0641b0c7bf6cc498cbb8f8f3b73da62dddb3ae080372",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:208893b94b9fd242263d9cdafdb397c1f727fe44868652d5149643568cac5e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev TypeIIShellFactorBlock.Left {N q : ℕ}
    (B : TypeIIShellFactorBlock N q) :=
  {m : VaughanScaleIndex N // B.ContainsLeft m}

/-- The fixed-cutoff right factor shell `[2^l,2^(l+1))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant0ab6d6494f1de7a6e900106ed70b30e8b68227b1f18d426b0ae8734fbf40f88a.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb03424e1107c51b98bd3b15ae45091417f206d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
