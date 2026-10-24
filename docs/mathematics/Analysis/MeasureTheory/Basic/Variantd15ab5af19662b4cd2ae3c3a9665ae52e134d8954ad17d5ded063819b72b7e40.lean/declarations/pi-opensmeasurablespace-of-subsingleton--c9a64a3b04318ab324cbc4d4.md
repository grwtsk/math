# Pi.opensMeasurableSpace_of_subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdbf750777ae87ef3fc60fcc7efc0cdff603a3cff711e0160d46346bf7c0f1a7",
  "kind": "instance",
  "lexical_name": "Pi.opensMeasurableSpace_of_subsingleton",
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
  "slug": "pi-opensmeasurablespace-of-subsingleton--c9a64a3b04318ab324cbc4d4",
  "source": {
    "blob": "7c7da67bdb2729e65b1245a11c800f945ee6214e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 372,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9a64a3b04318ab324cbc4d4ee0e81358640b330207d1f48932562da03d1556a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdbf750777ae87ef3fc60fcc7efc0cdff603a3cff711e0160d46346bf7c0f1a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.opensMeasurableSpace_of_subsingleton {ι : Type*} {X : ι → Type*} [Subsingleton ι]
    [∀ i, TopologicalSpace (X i)] [∀ i, MeasurableSpace (X i)] [∀ i, OpensMeasurableSpace (X i)] :
    OpensMeasurableSpace (∀ i, X i) where
  borel_le := by
    obtain h | h := isEmpty_or_nonempty ι
    · exact fun s _ ↦ Subsingleton.set_cases .empty .univ s
    have := Classical.choice (nonempty_unique ι)
    rw [borel, MeasurableSpace.pi, ciSup_unique]
    refine MeasurableSpace.generateFrom_le fun s hs ↦ MeasurableSpace.measurableSet_comap.2 ?_
    simp +instances only [Pi.topologicalSpace, ciInf_unique, isOpen_induced_eq, Set.mem_image,
      Set.mem_ofPred_eq] at hs
    obtain ⟨t, ht, rfl⟩ := hs
    exact ⟨t, ht.measurableSet, rfl⟩

/-- The typeclass `SecondCountableTopologyEither α β` registers the fact that at least one of
the two spaces has second countable topology. This is the right assumption to ensure that continuous
maps from `α` to `β` are strongly measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantd15ab5af19662b4cd2ae3c3a9665ae52e134d8954ad17d5ded063819b72b7e40.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c7da67bdb2729e65b1245a11c800f945ee6214e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
