# isDomain_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2b71d39-cc66-b406-68b3-73e7cee2ea87",
  "kind": "theorem",
  "lexical_name": "isDomain_localization",
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
  "slug": "isdomain-localization--ab9e9f1495f1d97a0f05405e",
  "source": {
    "blob": "4da5b6d47c3876f116cd987bc20d6045e1de7d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1286,
    "line": 1277,
    "path": "GRWTSK/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab9e9f1495f1d97a0f05405e5c7570f5321c3c4426532bedaf8ed7b1f292ef94",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2b71d39-cc66-b406-68b3-73e7cee2ea87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1277–1286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isDomain_localization {M : Submonoid A} (hM : M ≤ nonZeroDivisors A) :
    IsDomain (Localization M) :=
  isDomain_of_le_nonZeroDivisors _ hM
#align is_localization.is_domain_localization IsLocalization.isDomain_localization

end IsLocalization

open IsLocalization

/-- If `R` is a field, then localizing at a submonoid not containing `0` adds no new elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant53e3f88a00de6732eb96f79faf6b987880eb262e2a920419a4b41f56e9d47b16.lean#L1277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da5b6d47c3876f116cd987bc20d6045e1de7d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
