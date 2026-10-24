# no_preserving_endpoint_section

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bdd259c-83dc-34d8-4c6e-75eebff9ed96",
  "kind": "theorem",
  "lexical_name": "no_preserving_endpoint_section",
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
  "slug": "no-preserving-endpoint-section--cb68d061e3e085583ab7ce03",
  "source": {
    "blob": "2d805156560b48b04d80099c8c11cd6942641ba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb68d061e3e085583ab7ce03a9c2a39dea9ed121528c9c03552b5800219780e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bdd259c-83dc-34d8-4c6e-75eebff9ed96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_preserving_endpoint_section (a b c : ReachableVertex root)
    (hac : Reachable a.1 c.1) (hbc : Reachable b.1 c.1)
    (hab : ¬ Reachable a.1 b.1) (hba : ¬ Reachable b.1 a.1) :
    ¬ ∃ select : ReachableVertex root → Occurrence root,
      Function.RightInverse select reachableEndpoint ∧
        ∀ x y : ReachableVertex root, Reachable x.1 y.1 → Reachable (select x) (select y) := by
  rintro ⟨select, hsection, hpreserve⟩
  apply no_prefix_representation_of_incomparable_upper
    (Label := EdgeTrace.TotalEdge V) (fun x y : ReachableVertex root => Reachable x.1 y.1)
    a b c hac hbc hab hba
  refine ⟨fun vertex => trace (select vertex), ?_, ?_⟩
  · intro x y hreach
    exact (reachable_iff_prefix _ _).mp (hpreserve x y hreach)
  · intro x y hprefix
    obtain ⟨lifted⟩ := (reachable_iff_prefix (select x) (select y)).mpr hprefix
    have hprojected := ((projection root).mapPath lifted).reachable
    change Reachable (select x).endpoint (select y).endpoint at hprojected
    have hx : (select x).endpoint = x.1 := congrArg Subtype.val (hsection x)
    have hy : (select y).endpoint = y.1 := congrArg Subtype.val (hsection y)
    simpa only [hx, hy] using hprojected

/-- The existing diamond order as a thin quiver, explicitly including loops and the shortcut. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection__SourceOccurrence59b0a647e71486f3a69c53c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/EndpointSection.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d805156560b48b04d80099c8c11cd6942641ba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
