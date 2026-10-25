# _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsClub.Variant9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.Order.IsNormal.isClub_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4915a350-7987-b41f-9e3b-9cab71f5a9f9",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsClub.Variant9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.Order.IsNormal.isClub_fixedPoints",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-settheory-isclub-variant9a274c--bee1556148d776beee75b717",
  "source": {
    "blob": "8beb8503e489630de38c8b4dd468485aa02b2ddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 205,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bee1556148d776beee75b7174dda9392af7fc89c9265d997e5a97071eca57ccb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4915a350-7987-b41f-9e3b-9cab71f5a9f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsClub.Variant9a274c3bc9b5b18927c7db3a94cfbf1187717a682ac7891551464f0dbf01c5fe.Order.IsNormal.isClub_fixedPoints {f : α → α} (hα : cof α ≠ ℵ₀) (hf : IsNormal f) :
    IsClub f.fixedPoints := by
  cases isEmpty_or_nonempty α; · simp
  refine ⟨fun s hs hs₀ _ a ha ↦ (hf.map_isLUB ha hs₀).unique ?_, fun a ↦ ?_⟩
  · rwa [image_congr hs, image_id']
  · cases topOrderOrNoTopOrder α with
    | inl => use ⊤; simpa using! hf.strictMono.id_le ⊤
    | inr h =>
      rw [noTopOrder_iff_noMaxOrder] at h
      suffices BddAbove (.range fun n ↦ f^[n] a) from
        ⟨_, hf.iSup_iterate_mem_fixedPoints a this, le_csSup this ⟨0, rfl⟩⟩
      refine .of_not_isCofinal fun h ↦ (cof_le h).not_gt
        ((aleph0_le_cof.lt_of_ne' hα).trans_le' ?_)
      simpa using mk_range_le_lift (f := fun n : ℕ ↦ f^[n] a)

/-- Club sets in regular cardinals correspond one to one with normal functions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8beb8503e489630de38c8b4dd468485aa02b2ddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
