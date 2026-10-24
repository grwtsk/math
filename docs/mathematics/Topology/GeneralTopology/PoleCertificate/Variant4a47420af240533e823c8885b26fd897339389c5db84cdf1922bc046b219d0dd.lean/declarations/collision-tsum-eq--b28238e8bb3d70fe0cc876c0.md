# collision_tsum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 548,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:428263e7-4dfe-e98d-08ee-d54cd24f73bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:71a8c420-dcf7-b039-b6ac-533b5842cc5e",
  "kind": "theorem",
  "lexical_name": "collision_tsum_eq",
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
  "slug": "collision-tsum-eq--b28238e8bb3d70fe0cc876c0",
  "source": {
    "blob": "e910f6091b88067e29af8bb15a2f080cb52a38ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 600,
    "line": 548,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b28238e8bb3d70fe0cc876c0d0b1038c34241efa7129af7f5dc459e751f2db29",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71a8c420-dcf7-b039-b6ac-533b5842cc5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–600.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem collision_tsum_eq
    (p : ZeroPoint)
    (hp : p.val - 1 / 2 ≠ 0)
    (f : ℂ → ℂ) :
    (∑' o : collisionSet p,
      f (shiftedValue o.val)) =
      (multiplicity p : ℂ) *
        (f (p.val - 1 / 2) +
          f (-(p.val - 1 / 2))) := by
  have hf (q : ZeroPoint) :
      Summable
        (fun o :
          {o : ZeroOccurrence // o.1 = q} ↦
          f (shiftedValue o.val)) := by
    let e :
        {o : ZeroOccurrence // o.1 = q} ≃
          Fin (multiplicity q) :=
      Equiv.sigmaSubtype
        (β := fun r : ZeroPoint ↦ Fin (multiplicity r)) q
    let := Finite.of_equiv
      (Fin (multiplicity q)) e.symm
    exact Summable.of_finite
  have hsplit :=
    Summable.tsum_union_disjoint
      (f := fun o : ZeroOccurrence ↦
        f (shiftedValue o))
      (point_fibers_disjoint p hp)
      (hf p) (hf (reflectPoint p))
  have heq :
      (∑' o : collisionSet p,
        f (shiftedValue o.val)) =
        (∑' o :
          {o : ZeroOccurrence // o.1 = p},
          f (shiftedValue o.val)) +
        ∑' o :
          {o : ZeroOccurrence //
            o.1 = reflectPoint p},
          f (shiftedValue o.val) := by
    let e :=
      Equiv.setCongr (collisionSet_eq_point_fibers p)
    exact
      (e.tsum_eq
        (fun o ↦ f (shiftedValue o.val))).trans hsplit
  rw [heq, point_fiber_tsum, point_fiber_tsum,
    multiplicity_reflect]
  have hshift :
      (reflectPoint p).val - 1 / 2 =
        -(p.val - 1 / 2) := by
    simp only [reflectPoint]
    ring
  rw [hshift]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant4a47420af240533e823c8885b26fd897339389c5db84cdf1922bc046b219d0dd.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e910f6091b88067e29af8bb15a2f080cb52a38ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
