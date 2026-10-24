# span_smul_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:656fef30-288a-3ce2-d703-a471f6aa09dc",
  "kind": "theorem",
  "lexical_name": "span_smul_span",
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
  "slug": "span-smul-span--17ee73823a157e1c3ea9bc66",
  "source": {
    "blob": "029b70b0cfa6f8db77caa7e1f285af4ede9276d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 158,
    "path": "GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17ee73823a157e1c3ea9bc667d90cf6a686ab9272b967141ad6afc5005eb75e8",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:656fef30-288a-3ce2-d703-a471f6aa09dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_smul_span [(Ideal.span S).IsTwoSided] :
    Ideal.span S • span R T = span R (S • T) :=
  le_antisymm (smul_le.mpr fun r hr m hm ↦ by
    revert r
    refine span_induction (fun m hm r hr ↦ span_induction
      (fun r hr ↦ subset_span ⟨r, hr, m, hm, rfl⟩)
      (by rw [zero_smul]; exact zero_mem _)
      (fun _ _ _ _ h₁ h₂ ↦ by rw [add_smul]; exact add_mem h₁ h₂)
      (fun _ _ _ h ↦ by rw [smul_assoc]; exact smul_mem _ _ h) hr)
      (fun _ _ ↦ by rw [smul_zero]; exact zero_mem _)
      (fun _ _ _ _ h₁ h₂ r hr ↦ by rw [smul_add]; exact add_mem (h₁ r hr) (h₂ r hr))
      (fun r' m hm mem r hr ↦ by rw [← mul_smul]; exact mem _ (Ideal.mul_mem_right _ _ hr)) hm) <|
  span_le.mpr fun m ↦ by
    rintro ⟨s, hs, t, ht, rfl⟩
    exact smul_mem_smul (subset_span hs) (subset_span ht)

variable [I.IsTwoSided]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant23283fefd1426fc3568256171d06a7a90286fd9d3bd8830d80e5a778c1b82400.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029b70b0cfa6f8db77caa7e1f285af4ede9276d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
