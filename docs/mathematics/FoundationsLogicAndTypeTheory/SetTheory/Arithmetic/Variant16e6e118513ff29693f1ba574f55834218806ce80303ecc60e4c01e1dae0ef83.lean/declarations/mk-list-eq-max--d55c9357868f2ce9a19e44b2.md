# mk_list_eq_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2634178e-a53b-5ff4-5f48-ad650579d513",
  "kind": "theorem",
  "lexical_name": "mk_list_eq_max",
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
  "slug": "mk-list-eq-max--d55c9357868f2ce9a19e44b2",
  "source": {
    "blob": "eb39c0a2798bcab80f9f69c4d6903ffed124f34b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 746,
    "line": 739,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d55c9357868f2ce9a19e44b26cb67625b0c9857d544e2860134da3693ad9d54b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2634178e-a53b-5ff4-5f48-ad650579d513`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 739–746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_list_eq_max (α : Type u) [Nonempty α] : #(List α) = max ℵ₀ #α := by
  cases finite_or_infinite α
  · rw [mk_list_eq_aleph0, eq_comm, max_eq_left]
    exact mk_le_aleph0
  · rw [mk_list_eq_mk, eq_comm, max_eq_right]
    exact aleph0_le_mk α

-- TODO: standardize whether we write `max ℵ₀ x` or `max x ℵ₀`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant16e6e118513ff29693f1ba574f55834218806ce80303ecc60e4c01e1dae0ef83.lean#L739).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb39c0a2798bcab80f9f69c4d6903ffed124f34b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
