# extrinsicFix_invImage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3eda9568-7efc-07d8-b2d2-6728e59a5651",
  "kind": "theorem",
  "lexical_name": "extrinsicFix_invImage",
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
  "slug": "extrinsicfix-invimage--e5decd8d123a39378b5192d9",
  "source": {
    "blob": "0a7bf4b8d8915578dd510e0db9d11107bf226272",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 97,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5decd8d123a39378b5192d94599bf653d4fa8f10a0a66a16d9886be5882119f",
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

Occurrence: `result:3eda9568-7efc-07d8-b2d2-6728e59a5651`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem extrinsicFix_invImage {α' : Sort _} [∀ a, Nonempty (C a)] (R : α → α → Prop) (f : α' → α)
    (F : ∀ a, (∀ a', R a' a → C a') → C a) (F' : ∀ a, (∀ a', R (f a') (f a) → C (f a')) → C (f a))
    (h : ∀ a r, F (f a) r = F' a fun a' hR => r (f a') hR) (a : α') (h : WellFounded R) :
    extrinsicFix (C := (C <| f ·)) (InvImage R f) F' a = extrinsicFix (C := C) R F (f a) := by
  have h' := h
  rcases h with ⟨h⟩
  specialize h (f a)
  have : Acc (InvImage R f) a := InvImage.accessible _ h
  clear h
  induction this
  rename_i ih
  rw [extrinsicFix_eq_apply, extrinsicFix_eq_apply, h]
  · congr; ext a x
    rw [ih _ x]
  · assumption
  · exact InvImage.wf _ ‹_›

/--
A fixpoint combinator that allows for deferred proofs of termination.

{lean}`extrinsicFix R F` is function implemented as the loop
{lean}`extrinsicFix R F a = F a (fun a _ => extrinsicFix R F a)`.

If the loop can be shown to be well-founded, {name}`extrinsicFix_eq_apply` proves that it satisfies the
fixpoint equation. Otherwise, {lean}`extrinsicFix R F` is opaque, i.e., it is impossible to prove
nontrivial properties about it.
-/
add_decl_doc extrinsicFix

/--
The function implemented as the loop
{lean}`opaqueFix₂ R F a b = F a b (fun a' b' _ => opaqueFix₂ R F a' b')`.
{lean}`opaqueFix₂ R F` is the fixpoint of the functional {name}`F`, as long as the loop is
well-founded.

The loop might run forever depending on {name}`F`. It is opaque, i.e., it is impossible to prove
nontrivial properties about it.
-/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant725809bc4eda837a1f89029022de139f908371231bdc7c9c969d07f653e00d89.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a7bf4b8d8915578dd510e0db9d11107bf226272` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
