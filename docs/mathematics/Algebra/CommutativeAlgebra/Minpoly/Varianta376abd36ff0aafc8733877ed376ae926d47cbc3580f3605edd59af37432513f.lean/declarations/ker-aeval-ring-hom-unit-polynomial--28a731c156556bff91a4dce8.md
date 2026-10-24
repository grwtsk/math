# ker_aeval_ring_hom'_unit_polynomial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b2a8f34273366c8e5ac808a7fb5d2ba448add21",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a376abd36ff0aafc8733877ed376ae926d47cbc3580f3605edd59af37432513f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3aa5c1d6-e135-5095-076c-eb8b6cdfa477",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ba193b4-da94-d84a-bcc5-c77e8524b9d3",
  "kind": "theorem",
  "lexical_name": "ker_aeval_ring_hom'_unit_polynomial",
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
  "slug": "ker-aeval-ring-hom-unit-polynomial--28a731c156556bff91a4dce8",
  "source": {
    "blob": "9b2a8f34273366c8e5ac808a7fb5d2ba448add21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Varianta376abd36ff0aafc8733877ed376ae926d47cbc3580f3605edd59af37432513f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a731c156556bff91a4dce8a7f12df1242e68686dee83b14284f0f91aba52fa",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Varianta376abd36ff0aafc8733877ed376ae926d47cbc3580f3605edd59af37432513f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ba193b4-da94-d84a-bcc5-c77e8524b9d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_aeval_ring_hom'_unit_polynomial (f : End R M) (c : R[X]ˣ) :
    LinearMap.ker (aeval f (c : R[X])) = ⊥ :=
  LinearMap.ker_eq_bot'.mpr fun m hm ↦ by
    simpa [← mul_apply, ← aeval_mul] using congr(c⁻¹.1.aeval f $hm)

end CommSemiring

section CommRing

variable {R : Type v} {M : Type w} [CommRing R] [AddCommGroup M] [Module R M] {f : End R M} {μ : R}
  {x : M} {p : R[X]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Varianta376abd36ff0aafc8733877ed376ae926d47cbc3580f3605edd59af37432513f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Varianta376abd36ff0aafc8733877ed376ae926d47cbc3580f3605edd59af37432513f.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b2a8f34273366c8e5ac808a7fb5d2ba448add21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
