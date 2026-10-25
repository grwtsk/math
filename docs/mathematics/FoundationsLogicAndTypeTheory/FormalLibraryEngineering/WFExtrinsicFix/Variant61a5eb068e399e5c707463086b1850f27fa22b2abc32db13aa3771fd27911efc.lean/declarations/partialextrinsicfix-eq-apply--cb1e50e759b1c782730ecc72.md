# partialExtrinsicFix₃_eq_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70a2291b-2740-57d1-9e40-3cbe94210d7d",
  "kind": "theorem",
  "lexical_name": "partialExtrinsicFix₃_eq_apply",
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
  "slug": "partialextrinsicfix-eq-apply--cb1e50e759b1c782730ecc72",
  "source": {
    "blob": "5459c98e7814ea679222e682b752e967fd4ebc7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 518,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb1e50e759b1c782730ecc72463baed4957de9aadb2c36cf595e5b3a7284f700",
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

Occurrence: `result:70a2291b-2740-57d1-9e40-3cbe94210d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 518–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem partialExtrinsicFix₃_eq_apply [∀ a b c, Nonempty (C₃ a b c)]
    {R : (a : α) ×' (b : β a) ×' γ a b → (a : α) ×' (b : β a) ×' γ a b → Prop}
    {F : ∀ (a b c), (∀ (a' b' c'), R ⟨a', b', c'⟩ ⟨a, b, c⟩ → C₃ a' b' c') → C₃ a b c}
    {a : α} {b : β a} {c : γ a b} (wf : WellFounded R) :
    partialExtrinsicFix₃ R F a b c = F a b c (fun a b c _ => partialExtrinsicFix₃ R F a b c) :=
  partialExtrinsicFix₃_eq_apply_of_acc (wf.apply _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WFExtrinsicFix/Variant61a5eb068e399e5c707463086b1850f27fa22b2abc32db13aa3771fd27911efc.lean#L518).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5459c98e7814ea679222e682b752e967fd4ebc7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
