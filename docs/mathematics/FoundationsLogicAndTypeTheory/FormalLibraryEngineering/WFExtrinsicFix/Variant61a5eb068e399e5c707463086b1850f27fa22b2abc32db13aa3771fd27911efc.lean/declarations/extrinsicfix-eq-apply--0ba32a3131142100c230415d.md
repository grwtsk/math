# extrinsicFix₂_eq_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20cc8168-390e-1694-4a18-8b67c6141134",
  "kind": "theorem",
  "lexical_name": "extrinsicFix₂_eq_apply",
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
  "slug": "extrinsicfix-eq-apply--0ba32a3131142100c230415d",
  "source": {
    "blob": "5459c98e7814ea679222e682b752e967fd4ebc7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ba32a3131142100c230415d03c992930f3226553e521b9fdf914c85c695a979",
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

Occurrence: `result:20cc8168-390e-1694-4a18-8b67c6141134`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem extrinsicFix₂_eq_apply [∀ a b, Nonempty (C₂ a b)]
    {R : (a : α) ×' β a → (a : α) ×' β a → Prop}
    {F : (a : α) → (b : β a) → ((a' : α) → (b' : β a') → R ⟨a', b'⟩ ⟨a, b⟩ → C₂ a' b') → C₂ a b}
    (wf : WellFounded R) {a : α} {b : β a} :
    extrinsicFix₂ R F a b = F a b (fun a' b' _ => extrinsicFix₂ R F a' b') := by
  rw [extrinsicFix₂, extrinsicFix_eq_apply wf]
  rfl

/--
A fixpoint combinator that allows for deferred proofs of termination.

{lean}`extrinsicFix₂ R F` is function implemented as the loop
{lean}`extrinsicFix₂ R F a b = F a b (fun a' b' _ => extrinsicFix₂ R F a' b')`.

If the loop can be shown to be well-founded, {name}`extrinsicFix₂_eq_apply` proves that it satisfies the
fixpoint equation. Otherwise, {lean}`extrinsicFix₂ R F` is opaque, i.e., it is impossible to prove
nontrivial properties about it.
-/
add_decl_doc extrinsicFix₂

/--
The function implemented as the loop
{lean}`opaqueFix₃ R F a b c = F a b c (fun a' b' c' _ => opaqueFix₃ R F a' b' c')`.
{lean}`opaqueFix₃ R F` is the fixpoint of the functional {name}`F`, as long as the loop is
well-founded.

The loop might run forever depending on {name}`F`. It is opaque, i.e., it is impossible to prove
nontrivial properties about it.
-/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5459c98e7814ea679222e682b752e967fd4ebc7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
