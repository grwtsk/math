# finite_aperture_unresolvedness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d03e834b384a45fc2eaf6ddf86ef0926d7aa621d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80a09d1447cb8fc0781ea8064e0f5074324b77c4bf260f3e0aea1027701a6d4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c9f4d99f-7793-9293-33df-87b9183bac90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1738c9dd-1fcc-6ad0-cbb5-993514f9d1c7",
  "kind": "theorem",
  "lexical_name": "finite_aperture_unresolvedness",
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
  "slug": "finite-aperture-unresolvedness--61e9bf8bba913102c15f75a0",
  "source": {
    "blob": "d03e834b384a45fc2eaf6ddf86ef0926d7aa621d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 52,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CoordinationTargets/Variant80a09d1447cb8fc0781ea8064e0f5074324b77c4bf260f3e0aea1027701a6d4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e9bf8bba913102c15f75a09976e6f7f20d2c2a2daeb717c3c49a4b68b28606",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CoordinationTargets/Variant80a09d1447cb8fc0781ea8064e0f5074324b77c4bf260f3e0aea1027701a6d4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1738c9dd-1fcc-6ad0-cbb5-993514f9d1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_aperture_unresolvedness : FiniteApertureUnresolvedness :=
  fun aperture ↦ ⟨aperture.checkUnresolved_eq_true, locallyUnresolved_iff_all_rejected aperture⟩

/-- Equality of supplied histories preserves ranking; the bound is declared proposal cost only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CoordinationTargets/Variant80a09d1447cb8fc0781ea8064e0f5074324b77c4bf260f3e0aea1027701a6d4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CoordinationTargets/Variant80a09d1447cb8fc0781ea8064e0f5074324b77c4bf260f3e0aea1027701a6d4b.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d03e834b384a45fc2eaf6ddf86ef0926d7aa621d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
