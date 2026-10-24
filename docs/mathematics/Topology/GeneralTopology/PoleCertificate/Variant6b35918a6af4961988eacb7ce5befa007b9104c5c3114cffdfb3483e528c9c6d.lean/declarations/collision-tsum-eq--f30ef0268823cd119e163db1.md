# collision_tsum_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "22f6ee82aa1100af52a16283318b3d6a9f4ea382",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 545,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0492e66-b3d2-4932-c719-b77b55bd2fc4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8619fe3-865d-870c-078b-e2f4b7c80786",
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
  "slug": "collision-tsum-eq--f30ef0268823cd119e163db1",
  "source": {
    "blob": "22f6ee82aa1100af52a16283318b3d6a9f4ea382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 545,
    "path": "GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f30ef0268823cd119e163db1cb1996dfb8c1508e09eb293916d64cef96b64ca0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8619fe3-865d-870c-078b-e2f4b7c80786`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 545–597.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PoleCertificate/Variant6b35918a6af4961988eacb7ce5befa007b9104c5c3114cffdfb3483e528c9c6d.lean#L545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22f6ee82aa1100af52a16283318b3d6a9f4ea382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
