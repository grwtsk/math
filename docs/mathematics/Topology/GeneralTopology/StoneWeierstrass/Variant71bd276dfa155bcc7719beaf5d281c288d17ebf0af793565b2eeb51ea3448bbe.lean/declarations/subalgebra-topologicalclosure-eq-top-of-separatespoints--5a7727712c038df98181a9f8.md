# subalgebra_topologicalClosure_eq_top_of_separatesPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca761f48-171f-acc0-0228-9be99092030c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9da662ba-6e7c-0424-679e-949ae9cda633",
  "kind": "theorem",
  "lexical_name": "subalgebra_topologicalClosure_eq_top_of_separatesPoints",
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
  "slug": "subalgebra-topologicalclosure-eq-top-of-separatespoints--5a7727712c038df98181a9f8",
  "source": {
    "blob": "ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 265,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a7727712c038df98181a9f8cb40edb60af4489103e235bd18d08a471e0fea28",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9da662ba-6e7c-0424-679e-949ae9cda633`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subalgebra_topologicalClosure_eq_top_of_separatesPoints (A : Subalgebra ℝ C(X, ℝ))
    (w : A.SeparatesPoints) : A.topologicalClosure = ⊤ := by
  -- The closure of `A` is closed under taking `sup` and `inf`,
  -- and separates points strongly (since `A` does),
  -- so we can apply `sublattice_closure_eq_top`.
  apply SetLike.ext'
  let L := A.topologicalClosure
  have n : Set.Nonempty (L : Set C(X, ℝ)) := ⟨(1 : C(X, ℝ)), A.le_topologicalClosure A.one_mem⟩
  convert!
    sublattice_closure_eq_top (L : Set C(X, ℝ)) n
      (fun f fm g gm => inf_mem_closed_subalgebra L A.isClosed_topologicalClosure ⟨f, fm⟩ ⟨g, gm⟩)
      (fun f fm g gm => sup_mem_closed_subalgebra L A.isClosed_topologicalClosure ⟨f, fm⟩ ⟨g, gm⟩)
      (Subalgebra.SeparatesPoints.strongly
        (Subalgebra.separatesPoints_monotone A.le_topologicalClosure w))
  simp [L]

/-- An alternative statement of the Stone-Weierstrass theorem.

If `A` is a subalgebra of `C(X, ℝ)` which separates points (and `X` is compact),
every real-valued continuous function on `X` is a uniform limit of elements of `A`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant71bd276dfa155bcc7719beaf5d281c288d17ebf0af793565b2eeb51ea3448bbe.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdb7c44efa2b70cbcd5b5aa000964bfd9df447d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
