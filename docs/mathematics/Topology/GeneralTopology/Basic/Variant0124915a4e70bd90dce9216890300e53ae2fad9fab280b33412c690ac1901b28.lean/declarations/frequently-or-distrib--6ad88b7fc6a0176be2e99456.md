# frequently_or_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd4ac93d-574c-88e0-5910-8ce70fed6e0b",
  "kind": "theorem",
  "lexical_name": "frequently_or_distrib",
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
  "slug": "frequently-or-distrib--6ad88b7fc6a0176be2e99456",
  "source": {
    "blob": "f939f7ba65de37bf6f597e3961e24e97283a5401",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 790,
    "line": 787,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ad88b7fc6a0176be2e994561fd6262c32d86056006f95a483eec9233b40ad97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd4ac93d-574c-88e0-5910-8ce70fed6e0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–790.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frequently_or_distrib {f : Filter α} {p q : α → Prop} :
    (∃ᶠ x in f, p x ∨ q x) ↔ (∃ᶠ x in f, p x) ∨ ∃ᶠ x in f, q x := by
  simp only [Filter.Frequently, ← not_and_or, not_or, eventually_and]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant0124915a4e70bd90dce9216890300e53ae2fad9fab280b33412c690ac1901b28.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f939f7ba65de37bf6f597e3961e24e97283a5401` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
