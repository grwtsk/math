# CarrierOwnershipResult.ownerSelection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:846f54e7168f274a234858df99346bfc2094f803b634a560051bfd68ac6e21c5",
  "kind": "def",
  "lexical_name": "CarrierOwnershipResult.ownerSelection",
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
  "slug": "carrierownershipresult-ownerselection--11db5e544020037264ee2dd7",
  "source": {
    "blob": "a5f5bc6df80e54bb39e21d79973c0110075965f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1299,
    "line": 1293,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11db5e544020037264ee2dd72d58c52d541e888db3565a3d43b2f802cf4daed6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:846f54e7168f274a234858df99346bfc2094f803b634a560051bfd68ac6e21c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1293–1299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CarrierOwnershipResult.ownerSelection {count : Nat}
    (ownership : CarrierOwnershipResult (Fin count))
    (cell : Fin count) : Option Bool :=
  (ownership.candidates.zip ownership.mask).findSome?
    (fun entry => if entry.1 = cell then some entry.2 else none)

/-- Full configured ownership operation over a runtime-shaped candidate list. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant670d9ef89bb622c8b724a84aaf31c9c20b54e50e9239813d3cf909ac95080bbf.lean#L1293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5f5bc6df80e54bb39e21d79973c0110075965f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
