# End.algebraMap_isUnit_inv_apply_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f329dcbe-e38f-cf56-5b8a-9381b824bd9e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6109f08a-4f4c-3606-48dc-20fad1b1e636",
  "kind": "theorem",
  "lexical_name": "End.algebraMap_isUnit_inv_apply_eq_iff",
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
  "slug": "end-algebramap-isunit-inv-apply-eq-iff--8e0528ee401627e358327a6f",
  "source": {
    "blob": "16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 197,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e0528ee401627e358327a6fc018010c4e77f269e8a5262ca0bc678be827aad6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6109f08a-4f4c-3606-48dc-20fad1b1e636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem End.algebraMap_isUnit_inv_apply_eq_iff {x : R}
    (h : IsUnit (algebraMap R (Module.End S M) x)) (m m' : M) :
    (↑(h.unit⁻¹) : Module.End S M) m = m' ↔ m = x • m' where
  mp H := H ▸ (isUnit_apply_inv_apply_of_isUnit h m).symm
  mpr H :=
    H.symm ▸ by
      apply_fun ⇑h.unit.val using ((isUnit_iff _).mp h).injective
      simpa using Module.End.isUnit_apply_inv_apply_of_isUnit h (x • m')

@[deprecated (since := "2025-04-28")]
alias End_algebraMap_isUnit_inv_apply_eq_iff := End.algebraMap_isUnit_inv_apply_eq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
