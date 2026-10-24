# finsuppAntidiagEquivSubtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42113dafe67102f1bf3fd2ee0f12391b6825d2c2d6a75f1dd7578b898e1b8e62",
  "kind": "def",
  "lexical_name": "finsuppAntidiagEquivSubtype",
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
  "slug": "finsuppantidiagequivsubtype--0c31b48c7167c509dbc0e89a",
  "source": {
    "blob": "e5f105741d3f29dfbe7a6351a35c29be8435c6e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 52,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0c31b48c7167c509dbc0e89a42488ace096ad2e3cd1b0ea7d7ebdffc2ea4186b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42113dafe67102f1bf3fd2ee0f12391b6825d2c2d6a75f1dd7578b898e1b8e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def finsuppAntidiagEquivSubtype :
    s.finsuppAntidiag n ≃ { P : s →₀ μ // (P.sum fun (_ : s) ↦ id) = n } where
  toFun f := ⟨subtypeDomain (· ∈ s) f.val, by
    have hf := f.2
    rw [mem_finsuppAntidiag'] at hf
    simpa [sum, filter_mem_eq_inter, inter_eq_left.mpr hf.2] using hf.1⟩
  invFun f := ⟨extendDomain f.val, mem_finsuppAntidiag'.mpr
    ⟨by simpa [sum] using f.2, by simp [map_eq_image, image_subset_iff]⟩⟩
  left_inv f := by
    obtain ⟨hsum, hs⟩ := mem_finsuppAntidiag.mp f.prop
    ext1
    exact extendDomain_subtypeDomain _ hs
  right_inv f := by simp

variable (s) in
/-- The equivalence between `Finset.finsuppAntidiag s n` and `Sym s n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinsuppEquiv/Variant516858ab284c8f5b68cdd4b991c50b787b22857e4af15620fb41f754fbdcb67e.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5f105741d3f29dfbe7a6351a35c29be8435c6e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
