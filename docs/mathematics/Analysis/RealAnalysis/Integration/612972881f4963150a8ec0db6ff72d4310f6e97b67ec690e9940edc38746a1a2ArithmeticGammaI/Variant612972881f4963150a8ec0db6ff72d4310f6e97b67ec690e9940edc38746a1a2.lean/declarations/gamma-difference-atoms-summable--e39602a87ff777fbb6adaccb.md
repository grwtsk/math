# gamma_difference_atoms_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6284810d6fc954a6e11b670d3e6daffb4ecf01a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eedbe6bd-a12b-10f6-c59f-f01bc7fcf0b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:568dd243-4b43-fcc0-f32c-9fa8839feed1",
  "kind": "theorem",
  "lexical_name": "gamma_difference_atoms_summable",
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
  "slug": "gamma-difference-atoms-summable--e39602a87ff777fbb6adaccb",
  "source": {
    "blob": "6284810d6fc954a6e11b670d3e6daffb4ecf01a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e39602a87ff777fbb6adaccb9101de643a1dd662bf2082f8ad27147c6edf65a9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:568dd243-4b43-fcc0-f32c-9fa8839feed1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gamma_difference_atoms_summable (ξ t : ℝ) (ht : 0 < t) :
    Summable (fun n : ℕ ↦ gammaDifferenceAtom ξ n t) := by
  simp_rw [gamma_difference_atom_eq_geometric]
  exact ((summable_geometric_of_lt_one (Real.exp_nonneg (-t))
    (Real.exp_lt_one_iff.mpr (by linarith))).mul_left _).mul_right _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2ArithmeticGammaI/Variant612972881f4963150a8ec0db6ff72d4310f6e97b67ec690e9940edc38746a1a2.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6284810d6fc954a6e11b670d3e6daffb4ecf01a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
