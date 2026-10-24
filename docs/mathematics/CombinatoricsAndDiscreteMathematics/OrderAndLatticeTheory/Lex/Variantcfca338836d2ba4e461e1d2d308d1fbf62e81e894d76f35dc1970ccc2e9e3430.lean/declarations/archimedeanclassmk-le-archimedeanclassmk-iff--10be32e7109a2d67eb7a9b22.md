# archimedeanClassMk_le_archimedeanClassMk_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 227,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:327897c8-37c0-fd74-f4b9-33f23f1f177d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81c4aa08-0ba9-7e36-a6b0-8fd958e9b409",
  "kind": "theorem",
  "lexical_name": "archimedeanClassMk_le_archimedeanClassMk_iff",
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
  "slug": "archimedeanclassmk-le-archimedeanclassmk-iff--10be32e7109a2d67eb7a9b22",
  "source": {
    "blob": "29497fcfe9ef246a578469ce198fd554552f1947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 227,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10be32e7109a2d67eb7a9b22373090a4cdafbbd511fd5e85d9d419f0e046bf7d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81c4aa08-0ba9-7e36-a6b0-8fd958e9b409`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedeanClassMk_le_archimedeanClassMk_iff {x y : Lex R⟦Γ⟧} :
    ArchimedeanClass.mk x ≤ .mk y ↔
      (ofLex x).orderTop < (ofLex y).orderTop ∨
        (ofLex x).orderTop = (ofLex y).orderTop ∧
          ArchimedeanClass.mk (ofLex x).leadingCoeff ≤ .mk (ofLex y).leadingCoeff := by
  obtain hlt | heq | hgt := lt_trichotomy (ofLex x).orderTop (ofLex y).orderTop
  · -- when `x`'s order is less than `y`'s, this reduces to abs_lt_abs_of_orderTop_ofLex
    simpa [ArchimedeanClass.mk_le_mk, hlt] using
      ⟨1, by simpa using (abs_lt_abs_of_orderTop_ofLex hlt).le⟩
  · -- when `x` and `y` have the same order, this reduces to
    -- `archimedeanClass_le_iff_of_orderTop_eq`
    simpa [heq] using archimedeanClassMk_le_archimedeanClassMk_iff_of_orderTop_ofLex heq
  -- when `x`'s order is greater than `y`'s, neither side is true
  simp_rw [ArchimedeanClass.mk_le_mk]
  refine ⟨?_, by simp [hgt.not_gt, hgt.ne']⟩
  intro ⟨n, hn⟩
  contrapose! hn
  rw [← abs_nsmul]
  have hgt' : (ofLex y).orderTop < (ofLex (n • x)).orderTop := by
    apply lt_of_lt_of_le hgt
    simpa using orderTop_smul_not_lt n (ofLex x)
  exact abs_lt_abs_of_orderTop_ofLex hgt'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variantcfca338836d2ba4e461e1d2d308d1fbf62e81e894d76f35dc1970ccc2e9e3430.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29497fcfe9ef246a578469ce198fd554552f1947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
