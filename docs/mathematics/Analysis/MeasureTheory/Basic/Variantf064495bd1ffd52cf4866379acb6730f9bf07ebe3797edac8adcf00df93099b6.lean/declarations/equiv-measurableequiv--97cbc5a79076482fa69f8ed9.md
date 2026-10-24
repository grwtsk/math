# Equiv.measurableEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:180d7226086224d07caa83d6417d22fee921d6fabfd7d7a94d724c3a5041aba9",
  "kind": "def",
  "lexical_name": "Equiv.measurableEquiv",
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
  "slug": "equiv-measurableequiv--97cbc5a79076482fa69f8ed9",
  "source": {
    "blob": "ba288244a053d74d4bb04222b13b3317001393f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1158,
    "line": 1151,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97cbc5a79076482fa69f8ed9a6b2d83c02453862135b2ba16ea720854ba876d9",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:180d7226086224d07caa83d6417d22fee921d6fabfd7d7a94d724c3a5041aba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Equiv.measurableEquiv (e : α ≃ β) : α ≃ᵐ β := by
  by_cases h : Countable α
  · letI := Countable.of_equiv α e
    refine ⟨e, ?_, ?_⟩ <;> apply measurable_of_countable
  refine measurableEquivOfNotCountable h ?_
  rwa [e.countable_iff] at h

end PolishSpace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf064495bd1ffd52cf4866379acb6730f9bf07ebe3797edac8adcf00df93099b6.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba288244a053d74d4bb04222b13b3317001393f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
