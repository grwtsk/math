# zmultiples_zsmul_eq_zsmul_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44f8dd8f-aa0e-1bb3-3409-7114edb0663c",
  "kind": "theorem",
  "lexical_name": "zmultiples_zsmul_eq_zsmul_iff",
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
  "slug": "zmultiples-zsmul-eq-zsmul-iff--d66ceca3cfe1fbc0a4455893",
  "source": {
    "blob": "8ea66f79031bad69d976a66413277b764af1c22b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 62,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d66ceca3cfe1fbc0a445589372fabaddcb26d39918435f3468426f739dafb749",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44f8dd8f-aa0e-1bb3-3409-7114edb0663c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zmultiples_zsmul_eq_zsmul_iff {ψ θ : R ⧸ AddSubgroup.zmultiples p} {z : ℤ} (hz : z ≠ 0) :
    z • ψ = z • θ ↔ ∃ k : Fin z.natAbs, ψ = θ + ((k : ℕ) • (p / z) : R) := by
  induction ψ using Quotient.inductionOn
  induction θ using Quotient.inductionOn
  -- Porting note: Introduced Zp notation to shorten lines
  let Zp := AddSubgroup.zmultiples p
  have : (Quotient.mk _ : R → R ⧸ Zp) = ((↑) : R → R ⧸ Zp) := rfl
  simp only [Zp, this]
  simp_rw [← QuotientAddGroup.mk_zsmul, ← QuotientAddGroup.mk_add,
    QuotientAddGroup.eq_iff_sub_mem, ← smul_sub, ← sub_sub]
  exact AddSubgroup.zsmul_mem_zmultiples_iff_exists_sub_div hz

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant1389bd6a0423c992c1311b26c2b7fad61a741840665e15eeeac948f67136b9d0.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ea66f79031bad69d976a66413277b764af1c22b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
