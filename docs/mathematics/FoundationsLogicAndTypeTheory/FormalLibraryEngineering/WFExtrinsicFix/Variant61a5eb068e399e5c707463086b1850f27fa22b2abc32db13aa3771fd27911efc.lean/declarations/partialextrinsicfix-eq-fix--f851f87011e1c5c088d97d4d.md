# partialExtrinsicFix₂_eq_fix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e8bcfeb-6cc7-74cb-3b30-3e03f65bb85e",
  "kind": "theorem",
  "lexical_name": "partialExtrinsicFix₂_eq_fix",
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
  "slug": "partialextrinsicfix-eq-fix--f851f87011e1c5c088d97d4d",
  "source": {
    "blob": "5459c98e7814ea679222e682b752e967fd4ebc7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 432,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f851f87011e1c5c088d97d4d92abb384e045dfd956eaff0278c61e4d9e99c489",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e8bcfeb-6cc7-74cb-3b30-3e03f65bb85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem partialExtrinsicFix₂_eq_fix [∀ a b, Nonempty (C₂ a b)]
    {R : (a : α) ×' β a → (a : α) ×' β a → Prop}
    {F : ∀ a b, (∀ a' b', R ⟨a', b'⟩ ⟨a, b⟩ → C₂ a' b') → C₂ a b}
    (wf : WellFounded R) {a b} :
    partialExtrinsicFix₂ R F a b = wf.fix (fun x G => F x.1 x.2 (fun a b h => G ⟨a, b⟩ h)) ⟨a, b⟩ := by
  rw [partialExtrinsicFix₂_eq_partialExtrinsicFix (wf.apply _), partialExtrinsicFix_eq_fix wf]


/--
A 3-ary fixpoint combinator that can be used to construct recursive functions with an
*extrinsic, partial* proof of termination.

Given a relation {name}`R` and a fixpoint functional {name}`F` which must be decreasing with respect
to {name}`R`, {lean}`partialExtrinsicFix₃ R F` is the recursive function obtained by having {name}`F` call
itself recursively.

For each pair of inputs {given}`a`, {given}`b` and {given}`c`, {lean}`partialExtrinsicFix₃ R F a b` can be
verified given a *partial* termination proof. The precise semantics are as follows.

If {lean}`Acc R ⟨a, b, c⟩ ` does not hold, {lean}`partialExtrinsicFix₃ R F a b` might run forever. In this
case, nothing interesting can be proved about the recursive function; it is opaque and behaves like
a recursive function with the `partial` modifier.

If {lean}`Acc R ⟨a, b, c⟩` _does_ hold, {lean}`partialExtrinsicFix₃ R F a b` is equivalent to
{lean}`F a b c (fun a' b' c' _ => partialExtrinsicFix₃ R F a' b' c')`, both logically and regarding its
termination behavior.

In particular, if {name}`R` is well-founded, {lean}`partialExtrinsicFix₃ R F a b c` is equivalent to
a well-foundesd fixpoint.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5459c98e7814ea679222e682b752e967fd4ebc7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
