# distinct_occurrence_prefixes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4de7cea4-de19-512e-9053-92cac48a4720",
  "kind": "theorem",
  "lexical_name": "distinct_occurrence_prefixes",
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
  "slug": "distinct-occurrence-prefixes--3a413c1add6a252ec4618894",
  "source": {
    "blob": "6010dd72560d389836fe6a7b98869ee9ecfc094d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 82,
    "path": "GRWTSK/Combinatorics/DirectedGraph/PathOccurrences.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a413c1add6a252ec4618894e480710ab9edb49e4a63b0517d8e027416af2e88",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4de7cea4-de19-512e-9053-92cac48a4720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem distinct_occurrence_prefixes (path : Quiver.Path a b)
    (i j : Nat) (hi : i < path.vertices.length) (hj : j < path.vertices.length)
    (hij : i ≠ j) :
    ∃ (pi : Quiver.Path a path.vertices[i]) (si : Quiver.Path path.vertices[i] b)
      (pj : Quiver.Path a path.vertices[j]) (sj : Quiver.Path path.vertices[j] b),
      path = pi.comp si ∧ path = pj.comp sj ∧ pi.length = i ∧ pj.length = j ∧
      (⟨path.vertices[i], pi⟩ : Σ vertex : V, Quiver.Path a vertex) ≠
        ⟨path.vertices[j], pj⟩ := by
  obtain ⟨pi, si, hpi, hli⟩ := split_at_occurrence path i hi
  obtain ⟨pj, sj, hpj, hlj⟩ := split_at_occurrence path j hj
  refine ⟨pi, si, pj, sj, hpi, hpj, hli, hlj, ?_⟩
  intro hequal
  have hlength := congrArg (fun initial : Σ vertex : V, Quiver.Path a vertex =>
    initial.2.length) hequal
  exact hij (hli.symm.trans (hlength.trans hlj))

/-- Vertex-only reconstruction is valid when every typed arrow space is a subsingleton. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrenced7aa482f201bffca18c14fe8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedGraph/PathOccurrences.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6010dd72560d389836fe6a7b98869ee9ecfc094d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
