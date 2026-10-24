# toStepSucc.exists_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d837f136c007b2ef9824adf04814fc056e174aac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 196,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d85bffbc-0883-e40d-c1e0-f0803d111015",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:965b0f58-c446-902a-f393-b223341932e7",
  "kind": "theorem",
  "lexical_name": "toStepSucc.exists_root",
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
  "slug": "tostepsucc-exists-root--220b352c05dbf29e6879cb56",
  "source": {
    "blob": "d837f136c007b2ef9824adf04814fc056e174aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 196,
    "path": "GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:220b352c05dbf29e6879cb56483dbf1c1fde7c76f8f9cf4814f0a632ccd4d94e",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:965b0f58-c446-902a-f393-b223341932e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toStepSucc.exists_root {n} {f : Polynomial (Step k n)} (hfm : f.Monic)
    (hfi : Irreducible f) : ∃ x : Step k (n + 1), f.eval₂ (toStepSucc k n) x = 0 := by
-- Porting note: original proof was `@AdjoinMonic.exists_root _ (Step.field k n) _ hfm hfi`,
-- but it timeouts.
  obtain ⟨x, hx⟩ := @AdjoinMonic.exists_root _ (Step.field k n) _ hfm hfi
-- Porting note: using `hx` instead of `by apply hx` timeouts.
  exact ⟨x, by apply hx⟩
#align algebraic_closure.to_step_succ.exists_root AlgebraicClosure.toStepSucc.exists_root

-- Porting note: the following two declarations were added during the port to be used in the
-- definition of toStepOfLE
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d837f136c007b2ef9824adf04814fc056e174aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
