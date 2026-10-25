# disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93b9648b-ada0-7fe0-7e1f-74ee7c67dd4b",
  "kind": "theorem",
  "lexical_name": "disjoint",
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
  "slug": "disjoint--0e65499c62d33feb6cec9eef",
  "source": {
    "blob": "4a71178157f432c03afb416a36e1ac691a893a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 368,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e65499c62d33feb6cec9eef8582cb858d503910e20f9e2e22e50a96685c4bc5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93b9648b-ada0-7fe0-7e1f-74ee7c67dd4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint
    {T : SmoothFramedSurgeryTheory}
    {M : T.Manifold} {count : Nat}
    (family : FiniteDisjointFramedFamily T M count)
    {i j : Fin count} (hij : i ≠ j) :
    T.Disjoint (family.embedding i) (family.embedding j) :=
  family.pairwise_disjoint i j hij

end FiniteDisjointFramedFamily

/--
A weak summary comparing named results with one simultaneous result.

This record does **not** contain transported sites, typed intermediate surgery
states, adjacent-swap generators, Coxeter relations, or path independence.  It
is therefore not material evidence for finite-family commutation.  The strong
interface is `CoherentDisjointFamilyExecution`; its
`toCommutationCertificate` projection supplies this summary after all typed
execution and coherence data have already been provided.

The record remains available for consumers that need only a collection of
relative-boundary comparisons and make no execution-order coherence claim.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Varianta0788c80c7a60804a7a22fb187473f15883e115c34d18a7afdb5c9079e3ee9f3.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a71178157f432c03afb416a36e1ac691a893a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
