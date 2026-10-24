# forwardProduct_apply_of_isParallelSection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a4f00de-1a00-c869-90c2-0b5b3d163f2e",
  "kind": "theorem",
  "lexical_name": "forwardProduct_apply_of_isParallelSection",
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
  "slug": "forwardproduct-apply-of-isparallelsection--a46808827991a76bc079b953",
  "source": {
    "blob": "5271aff56c2493cef936719e00a6bf53503b36c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 336,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46808827991a76bc079b95360a544b37247ea75c2fd32b145974bd85b860945",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a4f00de-1a00-c869-90c2-0b5b3d163f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 336–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardProduct_apply_of_isParallelSection (system : StepSystem h)
    {value : Section3 h} (hvalue : IsParallelSection system value)
    (p : CoverPhase h) (n : ℕ) :
    system.forwardProduct p n (value p) = value (advance h p n) := by
  induction n generalizing p with
  | zero => simp
  | succ n ih =>
      rw [system.forwardProduct_succ, LinearEquiv.trans_apply, hvalue p,
        ih, advance_successor]

/-- Consequently, every value of a global parallel section is fixed by one-lap monodromy. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicHolonomy/Variant88efc430fc82dffefe19be8b306fd00bc6b3e08d85a20394965626394901a32c.lean#L336).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5271aff56c2493cef936719e00a6bf53503b36c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
