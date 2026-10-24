# mkMMem_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28adee7e5db9dcd300c45eae7b65133c0dd3b3fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:673c443a-ac6b-17dd-02bb-96b7f8815c94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d096717b-3e7e-2da3-e498-25cadc9482b6",
  "kind": "theorem",
  "lexical_name": "mkMMem_surjective",
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
  "slug": "mkmmem-surjective--d10c93b5bacff30ce28b5e94",
  "source": {
    "blob": "28adee7e5db9dcd300c45eae7b65133c0dd3b3fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 311,
    "path": "GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d10c93b5bacff30ce28b5e94bf58737ede7844fb92fb86cc65aa86d2d31abdba",
  "verification": {
    "reference": "docs/verification/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d096717b-3e7e-2da3-e498-25cadc9482b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkMMem_surjective [IsDedekindDomain S] [Algebra.IsAlgebraic R S] :
    Function.Surjective (ClassGroup.mkMMem bS adm) := by
  intro I'
  obtain ⟨⟨I, hI⟩, rfl⟩ := ClassGroup.mk0_surjective I'
  obtain ⟨J, mk0_eq_mk0, J_dvd⟩ := exists_mk0_eq_mk0 bS adm ⟨I, hI⟩
  exact ⟨⟨J, J_dvd⟩, mk0_eq_mk0.symm⟩

open Classical in
/-- The **class number theorem**: the class group of an integral closure `S` of `R` in an
algebraic extension `L` is finite if there is an admissible absolute value.

See also `ClassGroup.fintypeOfAdmissibleOfFinite` where `L` is a finite
extension of `K = Frac(R)`, supplying most of the required assumptions automatically.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finite/Variant64f3db822790a96525c8ad02f720e8d684eefd5706f8dcef10caa2d95ce5083e.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28adee7e5db9dcd300c45eae7b65133c0dd3b3fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
