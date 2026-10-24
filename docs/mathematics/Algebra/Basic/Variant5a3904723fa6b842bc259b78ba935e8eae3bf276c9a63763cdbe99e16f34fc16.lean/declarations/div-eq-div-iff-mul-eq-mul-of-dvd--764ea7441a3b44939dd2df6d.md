# div_eq_div_iff_mul_eq_mul_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c714314847d2f75e91e19860e860cd2ac383d056",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 405,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a3904723fa6b842bc259b78ba935e8eae3bf276c9a63763cdbe99e16f34fc16.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74d5e0ad-c6a0-da91-81b4-5a0106d43d81",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:341642f0-a40b-5a20-fbc9-7fc67ed5f43c",
  "kind": "theorem",
  "lexical_name": "div_eq_div_iff_mul_eq_mul_of_dvd",
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
  "slug": "div-eq-div-iff-mul-eq-mul-of-dvd--764ea7441a3b44939dd2df6d",
  "source": {
    "blob": "c714314847d2f75e91e19860e860cd2ac383d056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 405,
    "path": "GRWTSK/Algebra/Basic/Variant5a3904723fa6b842bc259b78ba935e8eae3bf276c9a63763cdbe99e16f34fc16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:764ea7441a3b44939dd2df6d776cf0e60cbd37b79b164a40f48124a9bd5e6e31",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant5a3904723fa6b842bc259b78ba935e8eae3bf276c9a63763cdbe99e16f34fc16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:341642f0-a40b-5a20-fbc9-7fc67ed5f43c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem div_eq_div_iff_mul_eq_mul_of_dvd {x y z t : R} (h1 : y ≠ 0) (h2 : t ≠ 0)
    (h3 : y ∣ x) (h4 : t ∣ z) : x / y = z / t ↔ t * x = y * z := by
  rw [div_eq_iff_eq_mul_of_dvd _ _ _ h1 h3, ← mul_div_assoc _ h4,
    eq_div_iff_mul_eq_of_dvd _ _ _ h2]
  obtain ⟨a, ha⟩ := h4
  use y * a
  rw [ha, mul_comm, mul_assoc, mul_comm y a]

end Div

end EuclideanDomain

section RingEquiv

variable {R S : Type*} [EuclideanDomain R] [CommRing S]

/-- If `S` is a nontrivial commutative ring isomorphic to a Euclidean domain
`R` then it is also a Euclidean domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant5a3904723fa6b842bc259b78ba935e8eae3bf276c9a63763cdbe99e16f34fc16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant5a3904723fa6b842bc259b78ba935e8eae3bf276c9a63763cdbe99e16f34fc16.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c714314847d2f75e91e19860e860cd2ac383d056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
