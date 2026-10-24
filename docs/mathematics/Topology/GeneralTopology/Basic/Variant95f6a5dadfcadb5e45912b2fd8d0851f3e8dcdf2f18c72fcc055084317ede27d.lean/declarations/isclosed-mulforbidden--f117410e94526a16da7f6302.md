# isClosed_mulForbidden

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b49329e-d311-22a1-a18e-256a2ba530a8",
  "kind": "lemma",
  "lexical_name": "isClosed_mulForbidden",
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
  "slug": "isclosed-mulforbidden--f117410e94526a16da7f6302",
  "source": {
    "blob": "31bbc053051c9712a6ce08dac692522a01c3a5b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 542,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f117410e94526a16da7f6302dea03c0454158f5c68f585add8743f53130c4fa3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b49329e-d311-22a1-a18e-256a2ba530a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 542–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosed_mulForbidden [DiscreteTopology A] (F : Set (Pattern A G)) :
    IsClosed (mulForbidden F) := by
  rw [mulForbidden]
  -- Rewrite as an intersection indexed by `p ∈ F` and `v : G`.
  have h_eq : {x | ∀ p ∈ F, ∀ v : G, ¬ p.mulOccursInAt x v}
    = ⋂ (p : Pattern A G) (hp : p ∈ F) (v : G), {x | ¬ p.mulOccursInAt x v} := by ext; simp
  rw [h_eq]
  -- Now prove that this big intersection is closed.
  refine isClosed_iInter (fun p => ?_)
  refine isClosed_iInter (fun hp => ?_)
  refine isClosed_iInter (fun v => ?_)
  -- For each `p, hp, v`, the section is the complement of an open occurrence set.
  have : {x | ¬ p.mulOccursInAt x v} = {x | p.mulOccursInAt x v}ᶜ := by ext; simp
  simpa [this, isClosed_compl_iff] using isOpen_mulOccursInAt (A := A) (G := G) p v

/-- Occurrence sets are closed. -/
@[to_additive isClosed_occursInAt /-- Occurrence sets are closed. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean#L542).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31bbc053051c9712a6ce08dac692522a01c3a5b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
