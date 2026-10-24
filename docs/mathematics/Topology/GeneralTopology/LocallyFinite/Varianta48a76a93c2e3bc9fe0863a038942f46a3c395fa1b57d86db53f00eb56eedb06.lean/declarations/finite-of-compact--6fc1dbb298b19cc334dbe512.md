# finite_of_compact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92bd862e-4d00-00d2-419e-364c036d41e2",
  "kind": "theorem",
  "lexical_name": "finite_of_compact",
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
  "slug": "finite-of-compact--6fc1dbb298b19cc334dbe512",
  "source": {
    "blob": "59a41f90be69b4d1855bfd0cbb7260d6e5de3f9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc1dbb298b19cc334dbe51283e2b454598233c8740a606e2db6c43388efd04f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92bd862e-4d00-00d2-419e-364c036d41e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_of_compact [CompactSpace X] {f : ι → Set X}
    (hf : LocallyFinite f) (hne : ∀ i, (f i).Nonempty) : (univ : Set ι).Finite := by
  simpa only [hne] using hf.finite_nonempty_of_compact

/-- If `X` is a compact space, then a locally finite family of nonempty sets of `X` can have only
finitely many elements, `Fintype` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Varianta48a76a93c2e3bc9fe0863a038942f46a3c395fa1b57d86db53f00eb56eedb06.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59a41f90be69b4d1855bfd0cbb7260d6e5de3f9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
