# blsub_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3e47f81-6ad4-0d58-2c6f-13b7937f7861",
  "kind": "theorem",
  "lexical_name": "blsub_eq_zero_iff",
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
  "slug": "blsub-eq-zero-iff--0a412c101fddbf84d6cf68f0",
  "source": {
    "blob": "c645c924592c1d359f7ffee102a85dda474aacf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1894,
    "line": 1888,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a412c101fddbf84d6cf68f016ea3af33111f075b0ed6e603cfb27ccd990eb4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3e47f81-6ad4-0d58-2c6f-13b7937f7861`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1888–1894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blsub_eq_zero_iff {o} {f : ∀ a < o, Ordinal} : blsub o f = 0 ↔ o = 0 := by
  rw [← lsub_eq_blsub, lsub_eq_zero_iff]
  exact out_empty_iff_eq_zero
#align ordinal.blsub_eq_zero_iff Ordinal.blsub_eq_zero_iff

-- Porting note: `rwa` → `rw`
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variantdd05e5cce7fb7bccf7be93342d3982b35bb980d4bf62c47587dd0ef81347e1dc.lean#L1888).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c645c924592c1d359f7ffee102a85dda474aacf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
