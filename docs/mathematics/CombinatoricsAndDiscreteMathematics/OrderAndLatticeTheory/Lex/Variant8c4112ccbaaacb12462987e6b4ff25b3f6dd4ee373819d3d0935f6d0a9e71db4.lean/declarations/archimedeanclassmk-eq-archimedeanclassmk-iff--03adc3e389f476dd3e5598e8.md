# archimedeanClassMk_eq_archimedeanClassMk_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7cc2eac-78bb-2cbf-2aba-523f63af082b",
  "kind": "theorem",
  "lexical_name": "archimedeanClassMk_eq_archimedeanClassMk_iff",
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
  "slug": "archimedeanclassmk-eq-archimedeanclassmk-iff--03adc3e389f476dd3e5598e8",
  "source": {
    "blob": "f1e6b3ce63f85c04e2120fe066229b0e88764fa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 258,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03adc3e389f476dd3e5598e806848d93a539679bdf3b2cc263e33e3c01e23732",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7cc2eac-78bb-2cbf-2aba-523f63af082b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedeanClassMk_eq_archimedeanClassMk_iff {x y : Lex R⟦Γ⟧} :
    ArchimedeanClass.mk x = ArchimedeanClass.mk y ↔
    (ofLex x).orderTop = (ofLex y).orderTop ∧
    ArchimedeanClass.mk (ofLex x).leadingCoeff = ArchimedeanClass.mk (ofLex y).leadingCoeff := by
  rw [le_antisymm_iff, archimedeanClassMk_le_archimedeanClassMk_iff,
    archimedeanClassMk_le_archimedeanClassMk_iff]
  constructor
  · simpa +contextual [or_imp, ne_of_gt, le_of_lt] using fun _ ↦ le_antisymm
  · intro ⟨horder, hcoeff⟩
    exact ⟨.inr ⟨horder, hcoeff.le⟩, .inr ⟨horder.symm, hcoeff.ge⟩⟩

variable (Γ R) in
/-- Finite archimedean classes of `Lex R⟦Γ⟧` decompose into lexicographical pairs
of `order` and the finite archimedean class of `leadingCoeff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lex/Variant8c4112ccbaaacb12462987e6b4ff25b3f6dd4ee373819d3d0935f6d0a9e71db4.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1e6b3ce63f85c04e2120fe066229b0e88764fa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
