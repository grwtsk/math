# geometry_produces_accepted_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc93ffbe-4145-a494-87ca-2e7db9253832",
  "kind": "theorem",
  "lexical_name": "geometry_produces_accepted_certificate",
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
  "slug": "geometry-produces-accepted-certificate--96a73a2646129088216fa71b",
  "source": {
    "blob": "04761e9e3d2533cc919c68a5dcfeb83028fe2ecd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/Combinatorics/Sequences/PartialSumCertificate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96a73a2646129088216fa71b6d9a0e00342aae9da45c3aecf6910333234e37ae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumCertificate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc93ffbe-4145-a494-87ca-2e7db9253832`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem geometry_produces_accepted_certificate {p : ℕ} (hp : p.Prime)
    (xs : List (ZMod p)) (D revision epoch : ℕ)
    (labels : DistinctNonzeroLabels xs) (geometry : GoodRepairGeometry xs.get D) :
    ∃ cert : OrderingCertificate p, cert.originalOrder = xs ∧
      cert.sourceRevision = revision ∧ cert.epoch = epoch ∧
      cert.repairRadius = D ∧ checkCertificate cert = true := by
  have hn : ∀ i : Fin xs.length, xs.get i ≠ 0 := fun i => labels.2 _ (List.get_mem xs i)
  obtain ⟨trace, hd, hb, _, hv⟩ := goodRepairGeometry_valid_permutation xs.get D hn geometry
  let cert : OrderingCertificate p := ⟨xs, replayList xs trace, trace, D, revision, epoch⟩
  refine ⟨cert, rfl, rfl, rfl, rfl, (checkCertificate_eq_true cert).mpr ?_⟩
  exact ⟨hp, rfl, replayList_perm xs trace, hb, hd, labels, hv⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumCertificate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/Sequences/PartialSumCertificate.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04761e9e3d2533cc919c68a5dcfeb83028fe2ecd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
