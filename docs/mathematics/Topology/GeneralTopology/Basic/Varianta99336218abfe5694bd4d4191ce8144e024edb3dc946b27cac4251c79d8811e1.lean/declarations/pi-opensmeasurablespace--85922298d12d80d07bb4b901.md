# Pi.opensMeasurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9d4e12162ea05b8829da331913c476d23c902372b59b90ef12a197a9d2e3671",
  "kind": "instance",
  "lexical_name": "Pi.opensMeasurableSpace",
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
  "slug": "pi-opensmeasurablespace--85922298d12d80d07bb4b901",
  "source": {
    "blob": "2b8a9a5f3732a4b4c1822eebb4543c9e50021073",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 352,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85922298d12d80d07bb4b9017ed4c35ead8b0409193f776e6f2a4d9030165ff5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9d4e12162ea05b8829da331913c476d23c902372b59b90ef12a197a9d2e3671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Pi.opensMeasurableSpace {ι : Type*} {X : ι → Type*} [Countable ι]
    [t' : ∀ i, TopologicalSpace (X i)] [∀ i, MeasurableSpace (X i)]
    [∀ i, SecondCountableTopology (X i)] [∀ i, OpensMeasurableSpace (X i)] :
    OpensMeasurableSpace (∀ i, X i) := by
  constructor
  have : Pi.topologicalSpace = .generateFrom { t | ∃ (s : ∀ a, Set (X a)) (i : Finset ι),
      (∀ a ∈ i, s a ∈ countableBasis (X a)) ∧ t = pi (↑i) s } := by
    simp only [funext fun a => @eq_generateFrom_countableBasis (X a) _ _, pi_generateFrom_eq]
  rw [borel_eq_generateFrom_of_subbasis this]
  apply generateFrom_le
  rintro _ ⟨s, i, hi, rfl⟩
  refine MeasurableSet.pi i.countable_toSet fun a ha => IsOpen.measurableSet ?_
  rw [eq_generateFrom_countableBasis (X a)]
  exact .basic _ (hi a ha)

/-- The typeclass `SecondCountableTopologyEither α β` registers the fact that at least one of
the two spaces has second countable topology. This is the right assumption to ensure that continuous
maps from `α` to `β` are strongly measurable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta99336218abfe5694bd4d4191ce8144e024edb3dc946b27cac4251c79d8811e1.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b8a9a5f3732a4b4c1822eebb4543c9e50021073` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
