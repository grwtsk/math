# partialExtrinsicFix_eq_fix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0b03888-b32c-a5dc-b681-2b7e0df391bf",
  "kind": "theorem",
  "lexical_name": "partialExtrinsicFix_eq_fix",
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
  "slug": "partialextrinsicfix-eq-fix--d76acdb8e68efa66243bd1cf",
  "source": {
    "blob": "0a7bf4b8d8915578dd510e0db9d11107bf226272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 345,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d76acdb8e68efa66243bd1cf741984a1c78a4388f9a70b589d9824f7d39cfc14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0b03888-b32c-a5dc-b681-2b7e0df391bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 345–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem partialExtrinsicFix_eq_fix [∀ a, Nonempty (C a)] {R : α → α → Prop}
    {F : ∀ a, (∀ a', R a' a → C a') → C a}
    (wf : WellFounded R) {a : α} :
    partialExtrinsicFix R F a = wf.fix F a := by
  have h := wf.apply a
  induction h with | intro a' h ih
  rw [partialExtrinsicFix_eq_apply_of_acc (Acc.intro _ h), WellFounded.fix_eq]
  congr 1; ext a'' hR
  exact ih _ hR

/--
A 2-ary fixpoint combinator that can be used to construct recursive functions with an
*extrinsic, partial* proof of termination.

Given a relation {name}`R` and a fixpoint functional {name}`F` which must be decreasing with respect
to {name}`R`, {lean}`partialExtrinsicFix₂ R F` is the recursive function obtained by having {name}`F` call
itself recursively.

For each pair of inputs {given}`a` and {given}`b`, {lean}`partialExtrinsicFix₂ R F a b` can be verified
given a *partial* termination proof. The precise semantics are as follows.

If {lean}`Acc R ⟨a, b⟩ ` does not hold, {lean}`partialExtrinsicFix₂ R F a b` might run forever. In this
case, nothing interesting can be proved about the recursive function; it is opaque and behaves like
a recursive function with the `partial` modifier.

If {lean}`Acc R ⟨a, b⟩` _does_ hold, {lean}`partialExtrinsicFix₂ R F a b` is equivalent to
{lean}`F a b (fun a' b' _ => partialExtrinsicFix₂ R F a' b')`, both logically and regarding its
termination behavior.

In particular, if {name}`R` is well-founded, {lean}`partialExtrinsicFix₂ R F a b` is equivalent to
a well-foundesd fixpoint.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean#L345).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7bf4b8d8915578dd510e0db9d11107bf226272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
