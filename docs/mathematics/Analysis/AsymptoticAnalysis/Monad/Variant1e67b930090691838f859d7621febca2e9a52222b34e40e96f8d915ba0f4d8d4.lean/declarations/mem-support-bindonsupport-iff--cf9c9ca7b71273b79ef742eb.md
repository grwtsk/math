# mem_support_bindOnSupport_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a26efe4-be29-2361-db80-fad7901c956d",
  "kind": "theorem",
  "lexical_name": "mem_support_bindOnSupport_iff",
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
  "slug": "mem-support-bindonsupport-iff--cf9c9ca7b71273b79ef742eb",
  "source": {
    "blob": "f31ed2077014c0cda8d028ac5c8ad8bd769860cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 246,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf9c9ca7b71273b79ef742ebbf1ffc62bdbe7e1a8a0d35bc3dfaaacc26ec28a4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a26efe4-be29-2361-db80-fad7901c956d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_support_bindOnSupport_iff (b : β) :
    b ∈ (p.bindOnSupport f).support ↔ ∃ (a : α) (h : a ∈ p.support), b ∈ (f a h).support := by
  simp only [support_bindOnSupport, Set.mem_setOf_eq, Set.mem_iUnion]
#align pmf.mem_support_bind_on_support_iff Pmf.mem_support_bindOnSupport_iff

/-- `bindOnSupport` reduces to `bind` if `f` doesn't depend on the additional hypothesis. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant1e67b930090691838f859d7621febca2e9a52222b34e40e96f8d915ba0f4d8d4.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31ed2077014c0cda8d028ac5c8ad8bd769860cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
