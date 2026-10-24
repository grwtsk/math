# ListBlank.cons_flatMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:14486dda-022a-d7ee-9ba6-8e624c7b3c16",
  "kind": "theorem",
  "lexical_name": "ListBlank.cons_flatMap",
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
  "slug": "listblank-cons-flatmap--dc6226de93743d5e75bd7087",
  "source": {
    "blob": "c2bcf74c500c7697abb1fb74ac0723d5693e9f89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 403,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc6226de93743d5e75bd70875e5e574320dec73ebf7142a9489c0bc361ab6d9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14486dda-022a-d7ee-9ba6-8e624c7b3c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ListBlank.cons_flatMap {Γ Γ'} [Inhabited Γ] [Inhabited Γ'] (a : Γ) (l : ListBlank Γ)
    (f : Γ → List Γ') (hf) : (l.cons a).flatMap f hf = (l.flatMap f hf).append (f a) := by
  refine l.induction_on fun l ↦ ?_
  simp only [ListBlank.append_mk, ListBlank.flatMap_mk, ListBlank.cons_mk, List.flatMap_cons]

end ListBlank

section Tape

/-- The tape of a Turing machine is composed of a head element (which we imagine to be the
current position of the head), together with two `ListBlank`s denoting the portions of the tape
going off to the left and right. When the Turing machine moves right, an element is pulled from the
right side and becomes the new head, while the head element is `cons`ed onto the left side. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tape/Variant92b5d503312c5fc4bfd351a84ade1ccda05d572de90b5830fb8e49d9ea0e3db5.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2bcf74c500c7697abb1fb74ac0723d5693e9f89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
