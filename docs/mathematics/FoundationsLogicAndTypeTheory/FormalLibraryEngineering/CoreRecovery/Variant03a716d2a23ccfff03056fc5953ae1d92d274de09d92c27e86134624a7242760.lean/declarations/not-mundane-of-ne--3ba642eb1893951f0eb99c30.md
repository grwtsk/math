# not_mundane_of_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71f0f768-03fc-25e5-f32c-d1641a72a9ca",
  "kind": "theorem",
  "lexical_name": "not_mundane_of_ne",
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
  "slug": "not-mundane-of-ne--3ba642eb1893951f0eb99c30",
  "source": {
    "blob": "a0388fb0d196b71735982e7ecbeabb658129f015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba642eb1893951f0eb99c30ceef38424aa5dbaf39234aa79f62094d0ecbc518",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71f0f768-03fc-25e5-f32c-d1641a72a9ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_mundane_of_ne
    (R : ExteriorSlopeRigidity.{u} T)
    {K : T.Knot}
    (hK : T.Nontrivial K)
    {r s : T.Slope K}
    (hrs : r ≠ s) :
    ¬ T.MundanePair K r s := by
  rintro ⟨homeomorphism, carries⟩
  apply hrs
  exact (R.fixes_every_slope hK homeomorphism r).symm.trans carries

/-- Every purely cosmetic pair on a nontrivial knot is exotic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoreRecovery/Variant03a716d2a23ccfff03056fc5953ae1d92d274de09d92c27e86134624a7242760.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0388fb0d196b71735982e7ecbeabb658129f015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
