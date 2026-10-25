# fixInduction'_stop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daa73cde-4300-302a-9435-31a39c39c8f8",
  "kind": "theorem",
  "lexical_name": "fixInduction'_stop",
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
  "slug": "fixinduction-stop--123c14315092cf06bf038843",
  "source": {
    "blob": "9700a3e048fb2ae4fddc7aba33514237b8d88527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 373,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variant2c6419191bdaef2857c0dd17a1763d7d58a7e240f7f72f70897aad87957c6349.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:123c14315092cf06bf038843f05f484671f8d126b9cf0ae572cfdfd0426f7e14",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variant2c6419191bdaef2857c0dd17a1763d7d58a7e240f7f72f70897aad87957c6349.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daa73cde-4300-302a-9435-31a39c39c8f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixInduction'_stop {C : α → Sort*} {f : α →. Sum β α} {b : β} {a : α} (h : b ∈ f.fix a)
    (fa : Sum.inl b ∈ f a) (hbase : ∀ a_final : α, Sum.inl b ∈ f a_final → C a_final)
    (hind : ∀ a₀ a₁ : α, b ∈ f.fix a₁ → Sum.inr a₁ ∈ f a₀ → C a₁ → C a₀) :
    @fixInduction' _ _ C _ _ _ h hbase hind = hbase a fa := by
  unfold fixInduction'
  rw [fixInduction_spec]
  -- Porting note: the explicit motive required because `simp` behaves differently
  refine' Eq.rec (motive := fun x e =>
      Sum.casesOn (motive := fun y => (f a).get (dom_of_mem_fix h) = y → C a) x _ _
      (Eq.trans (Part.get_eq_of_mem fa (dom_of_mem_fix h)) e) = hbase a fa) _
    (Part.get_eq_of_mem fa (dom_of_mem_fix h)).symm
  simp
#align pfun.fix_induction'_stop PFun.fixInduction'_stop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variant2c6419191bdaef2857c0dd17a1763d7d58a7e240f7f72f70897aad87957c6349.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PFun/Variant2c6419191bdaef2857c0dd17a1763d7d58a7e240f7f72f70897aad87957c6349.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9700a3e048fb2ae4fddc7aba33514237b8d88527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
