# iterate_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24e89e1a-b140-fcad-80ae-9cf316856196",
  "kind": "theorem",
  "lexical_name": "iterate_image",
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
  "slug": "iterate-image--58ad45be4af7f7c6357e3949",
  "source": {
    "blob": "10d06b669a30f29a6e5e2dd693593f1e7aa4bb3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 583,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58ad45be4af7f7c6357e394979b622bfcdbaf4517fa574ac43b1d984fdfee783",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24e89e1a-b140-fcad-80ae-9cf316856196`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 583–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iterate_image [DecidableEq α] (f : α → α) (n : ℕ) :
    (Finset.image f)^[n] s = s.image f^[n] := by
  induction n with
  | zero => simp
  | succ n ih => rw [iterate_succ_apply', iterate_succ', ih, image_image]

end Image

/-! ### filterMap -/

section FilterMap

/-- `filterMap f s` is a combination filter/map operation on `s`.
  The function `f : α → Option β` is applied to each element of `s`;
  if `f a` is `some b` then `b` is included in the result, otherwise
  `a` is excluded from the resulting finset.

  In notation, `filterMap f s` is the finset `{b : β | ∃ a ∈ s, f a = some b}`. -/
-- TODO: should there be `filterImage` too?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant062cda106421effd43a96ecff0ca74f3e27ebe5e07f0d4b5eead2ffc6d73779f.lean#L583).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10d06b669a30f29a6e5e2dd693593f1e7aa4bb3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
