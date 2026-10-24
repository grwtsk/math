# finiteMultiplicity_iff_emultiplicity_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73fa16aff3baa9231783726137ed347059e39f0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c4a92fe-4368-b4ff-5af9-5a38a742ccab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b31ba60a-eebf-94b0-8f76-c01dd0129d46",
  "kind": "theorem",
  "lexical_name": "finiteMultiplicity_iff_emultiplicity_ne_top",
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
  "slug": "finitemultiplicity-iff-emultiplicity-ne-top--c9409af761034f7b61b5af98",
  "source": {
    "blob": "73fa16aff3baa9231783726137ed347059e39f0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9409af761034f7b61b5af98dbdd1babe4370c247421799e1e99e3a4b41a0e09",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b31ba60a-eebf-94b0-8f76-c01dd0129d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteMultiplicity_iff_emultiplicity_ne_top :
    FiniteMultiplicity a b ↔ emultiplicity a b ≠ ⊤ := by simp

@[deprecated (since := "2024-11-30")]
alias finite_iff_emultiplicity_ne_top := finiteMultiplicity_iff_emultiplicity_ne_top

alias ⟨FiniteMultiplicity.emultiplicity_ne_top, _⟩ := finite_iff_emultiplicity_ne_top

@[deprecated (since := "2024-11-30")]
alias multiplicity.Finite.emultiplicity_ne_top := FiniteMultiplicity.emultiplicity_ne_top

@[deprecated (since := "2024-11-08")]
alias Finite.emultiplicity_ne_top := FiniteMultiplicity.emultiplicity_ne_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant1abd10f2130ffb2367711464367ca78a1ca7b9899d83edec7041c3d28a8cfa47.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73fa16aff3baa9231783726137ed347059e39f0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
