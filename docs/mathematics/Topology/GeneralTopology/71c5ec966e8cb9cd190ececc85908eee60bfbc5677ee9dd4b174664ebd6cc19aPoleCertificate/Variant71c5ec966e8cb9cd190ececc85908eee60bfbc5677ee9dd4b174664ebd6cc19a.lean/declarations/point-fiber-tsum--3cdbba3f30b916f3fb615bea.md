# point_fiber_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c138038c430f2d7a338ed68a9d92f03ea233a285",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 522,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cffb879-c790-0811-b134-46bad760d049",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91d036b0-bf0b-4443-5719-26695559822b",
  "kind": "theorem",
  "lexical_name": "point_fiber_tsum",
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
  "slug": "point-fiber-tsum--3cdbba3f30b916f3fb615bea",
  "source": {
    "blob": "c138038c430f2d7a338ed68a9d92f03ea233a285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 522,
    "path": "GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3cdbba3f30b916f3fb615bea8abfff7c2bdb813ea3bfe86a391fb89e314d8f8f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d036b0-bf0b-4443-5719-26695559822b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem point_fiber_tsum
    (p : ZeroPoint) (f : ℂ → ℂ) :
    (∑' o :
      {o : ZeroOccurrence // o.1 = p},
      f (shiftedValue o.val)) =
      (multiplicity p : ℂ) *
        f (p.val - 1 / 2) := by
  let e :
      {o : ZeroOccurrence // o.1 = p} ≃
        Fin (multiplicity p) :=
    Equiv.sigmaSubtype
      (β := fun q : ZeroPoint ↦ Fin (multiplicity q)) p
  calc
    _ =
        ∑' i : Fin (multiplicity p),
          f (shiftedValue (e.symm i).val) :=
      (e.symm.tsum_eq
        (fun o ↦ f (shiftedValue o.val))).symm
    _ = _ := by
      change
        (∑' _i : Fin (multiplicity p),
          f (p.val - 1 / 2)) = _
      simp [nsmul_eq_mul]

/-- Both complete collision fibers contribute exactly the reflected pair with
multiplicity once. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19aPoleCertificate/Variant71c5ec966e8cb9cd190ececc85908eee60bfbc5677ee9dd4b174664ebd6cc19a.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c138038c430f2d7a338ed68a9d92f03ea233a285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
